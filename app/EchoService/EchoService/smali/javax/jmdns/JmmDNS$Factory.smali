.class public final Ljavax/jmdns/JmmDNS$Factory;
.super Ljava/lang/Object;
.source "JmmDNS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/JmmDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/JmmDNS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/JmmDNS;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Ljavax/jmdns/JmmDNS$Factory;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Ljavax/jmdns/JmmDNS$Factory;->newJmmDNS()Ljavax/jmdns/JmmDNS;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    .line 105
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_instance:Ljavax/jmdns/JmmDNS;

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static newJmmDNS()Ljavax/jmdns/JmmDNS;
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "dns":Ljavax/jmdns/JmmDNS;
    sget-object v2, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    .line 88
    .local v0, "delegate":Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;->newJmmDNS()Ljavax/jmdns/JmmDNS;

    move-result-object v1

    .line 91
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "dns":Ljavax/jmdns/JmmDNS;
    :goto_0
    return-object v1

    .restart local v1    # "dns":Ljavax/jmdns/JmmDNS;
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/JmmDNSImpl;

    .end local v1    # "dns":Ljavax/jmdns/JmmDNS;
    invoke-direct {v1}, Ljavax/jmdns/impl/JmmDNSImpl;-><init>()V

    goto :goto_0
.end method

.method public static setClassDelegate(Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;)V
    .locals 1
    .param p0, "delegate"    # Ljavax/jmdns/JmmDNS$Factory$ClassDelegate;

    .prologue
    .line 66
    sget-object v0, Ljavax/jmdns/JmmDNS$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
