.class Lcom/phicomm/speaker/player/EchoService$1;
.super Ljava/lang/Object;
.source "EchoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/EchoService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/EchoService;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/EchoService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/phicomm/speaker/player/EchoService$1;->this$0:Lcom/phicomm/speaker/player/EchoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService$1;->this$0:Lcom/phicomm/speaker/player/EchoService;

    invoke-static {v0}, Lcom/phicomm/speaker/player/EchoService;->access$000(Lcom/phicomm/speaker/player/EchoService;)Lcom/phicomm/speaker/player/model/EasyPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->init()V

    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/player/EchoService$1;->this$0:Lcom/phicomm/speaker/player/EchoService;

    invoke-static {v0}, Lcom/phicomm/speaker/player/EchoService;->access$100(Lcom/phicomm/speaker/player/EchoService;)Lcom/phicomm/speaker/player/MsgHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/MsgHandler;->init()V

    .line 34
    return-void
.end method
