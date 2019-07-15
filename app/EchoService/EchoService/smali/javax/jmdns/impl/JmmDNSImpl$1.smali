.class Ljavax/jmdns/impl/JmmDNSImpl$1;
.super Ljava/lang/Object;
.source "JmmDNSImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmmDNSImpl;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/jmdns/impl/JmmDNSImpl;

.field final synthetic val$mDNS:Ljavax/jmdns/JmDNS;


# direct methods
.method constructor <init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/JmDNS;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->this$0:Ljavax/jmdns/impl/JmmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->val$mDNS:Ljavax/jmdns/JmDNS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->val$mDNS:Ljavax/jmdns/JmDNS;

    invoke-virtual {v0}, Ljavax/jmdns/JmDNS;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
