.class public final Ljavax/jmdns/impl/DNSTaskStarter$Factory;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSTaskStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    }
.end annotation


# static fields
.field private static final _databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;


# instance fields
.field private final _instances:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljavax/jmdns/impl/JmDNSImpl;",
            "Ljavax/jmdns/impl/DNSTaskStarter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    .line 63
    return-void
.end method

.method public static classDelegate()Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    return-object v0
.end method

.method public static getInstance()Ljavax/jmdns/impl/DNSTaskStarter$Factory;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v0, :cond_1

    .line 111
    const-class v1, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    invoke-direct {v0}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instance:Ljavax/jmdns/impl/DNSTaskStarter$Factory;

    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .locals 3
    .param p0, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "instance":Ljavax/jmdns/impl/DNSTaskStarter;
    sget-object v2, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    .line 98
    .local v0, "delegate":Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;->newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v1

    .line 101
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "instance":Ljavax/jmdns/impl/DNSTaskStarter;
    :goto_0
    return-object v1

    .restart local v1    # "instance":Ljavax/jmdns/impl/DNSTaskStarter;
    :cond_1
    new-instance v1, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;

    .end local v1    # "instance":Ljavax/jmdns/impl/DNSTaskStarter;
    invoke-direct {v1, p0}, Ljavax/jmdns/impl/DNSTaskStarter$DNSTaskStarterImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    goto :goto_0
.end method

.method public static setClassDelegate(Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;)V
    .locals 1
    .param p0, "delegate"    # Ljavax/jmdns/impl/DNSTaskStarter$Factory$ClassDelegate;

    .prologue
    .line 74
    sget-object v0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_databaseClassDelegate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;
    .locals 3
    .param p1, "jmDNSImpl"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 128
    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    .line 129
    .local v0, "starter":Ljavax/jmdns/impl/DNSTaskStarter;
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->newDNSTaskStarter(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/impl/DNSTaskStarter;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Ljavax/jmdns/impl/DNSTaskStarter$Factory;->_instances:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "starter":Ljavax/jmdns/impl/DNSTaskStarter;
    check-cast v0, Ljavax/jmdns/impl/DNSTaskStarter;

    .line 133
    .restart local v0    # "starter":Ljavax/jmdns/impl/DNSTaskStarter;
    :cond_0
    return-object v0
.end method
