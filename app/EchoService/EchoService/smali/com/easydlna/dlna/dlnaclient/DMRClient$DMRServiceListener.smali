.class Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;
.super Lcom/easydlna/dlna/service/IDMRCallback$Stub;
.source "DMRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMRServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;


# direct methods
.method private constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-direct {p0}, Lcom/easydlna/dlna/service/IDMRCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/dlnaclient/DMRClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMRClient;
    .param p2, "x1"    # Lcom/easydlna/dlna/dlnaclient/DMRClient$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;-><init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;)V

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->GetPosition()I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public pause()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->Pause()I

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public play()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->Play()I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public seek(I)I
    .locals 1
    .param p1, "seekTo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->Seek(I)I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)I
    .locals 1
    .param p1, "urlSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->SetDataSource(Ljava/lang/String;)I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public stop()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->Stop()I

    move-result v0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
