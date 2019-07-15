.class Lcom/phicomm/speaker/presenter/mqtt/c$1;
.super Ljava/lang/Object;
.source "MqttDeviceStatusHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/mqtt/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/mqtt/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/mqtt/c;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/mqtt/c$1;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c$1;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/c;->a(Lcom/phicomm/speaker/presenter/mqtt/c;)V

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c$1;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/c;->b(Lcom/phicomm/speaker/presenter/mqtt/c;)Lcom/phicomm/speaker/presenter/mqtt/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/mqtt/c$1;->a:Lcom/phicomm/speaker/presenter/mqtt/c;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/mqtt/c;->b(Lcom/phicomm/speaker/presenter/mqtt/c;)Lcom/phicomm/speaker/presenter/mqtt/c$a;

    move-result-object v0

    sget v1, Lcom/phicomm/speaker/presenter/mqtt/c$b;->c:I

    const-string v2, "\u6590\u8bafAI\u97f3\u7bb1\u5df2\u79bb\u7ebf"

    invoke-interface {v0, v1, v2}, Lcom/phicomm/speaker/presenter/mqtt/c$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
