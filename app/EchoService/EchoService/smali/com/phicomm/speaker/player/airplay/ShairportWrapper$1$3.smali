.class Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;
.super Ljava/lang/Object;
.source "ShairportWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;->this$1:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;->this$1:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    iget-object v0, v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->access$202(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;Z)Z

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;->this$1:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    iget-object v0, v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1$3;->this$1:Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;

    iget-object v0, v0, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/ShairportWrapper;

    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/ShairportWrapper;)Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/phicomm/speaker/player/airplay/ShairportWrapper$ShairportListener;->Paused()I

    .line 81
    :cond_0
    return-void
.end method
