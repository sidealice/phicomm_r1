.class Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;
.super Lcom/easydlna/dlna/service/IDMCCallback$Stub;
.source "DMCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DMCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;


# direct methods
.method private constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-direct {p0}, Lcom/easydlna/dlna/service/IDMCCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;Lcom/easydlna/dlna/dlnaclient/DMCClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/easydlna/dlna/dlnaclient/DMCClient;
    .param p2, "x1"    # Lcom/easydlna/dlna/dlnaclient/DMCClient$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;-><init>(Lcom/easydlna/dlna/dlnaclient/DMCClient;)V

    return-void
.end method


# virtual methods
.method public ContentNotify(Ljava/lang/String;III)V
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;
    .param p2, "VideoCounts"    # I
    .param p3, "AudioCounts"    # I
    .param p4, "ImageCounts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DlnaFilesNotify(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public DeviceNotify(Lcom/easydlna/dlna/service/DlnaDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/easydlna/dlna/service/DlnaDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DlnaDeviceStatusNotify(Lcom/easydlna/dlna/service/DlnaDevice;)V

    goto :goto_0
.end method

.method public PlayStatusNotify(Ljava/lang/String;Lcom/easydlna/dlna/service/RenderStatus;)V
    .locals 1
    .param p1, "udn"    # Ljava/lang/String;
    .param p2, "renderStatus"    # Lcom/easydlna/dlna/service/RenderStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCServiceListener;->this$0:Lcom/easydlna/dlna/dlnaclient/DMCClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMCClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMCClient;)Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;->DlnaPlayStatusNotify(Ljava/lang/String;Lcom/easydlna/dlna/service/RenderStatus;)V

    goto :goto_0
.end method
