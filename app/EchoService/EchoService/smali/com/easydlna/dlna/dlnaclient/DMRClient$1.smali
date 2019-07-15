.class Lcom/easydlna/dlna/dlnaclient/DMRClient$1;
.super Ljava/lang/Object;
.source "DMRClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;


# direct methods
.method constructor <init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    .line 72
    const-string v1, "DMRClient"

    const-string v2, "DMR Service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/service/IDMRService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {p2}, Lcom/easydlna/dlna/service/IDMRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easydlna/dlna/service/IDMRService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$102(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/service/IDMRService;)Lcom/easydlna/dlna/service/IDMRService;

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/service/IDMRService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 77
    const-string v1, "DMRClient"

    const-string v2, "DMR Service fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->DMRServiceStatusNotify(I)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$200(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    move-result-object v1

    if-nez v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    new-instance v2, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    iget-object v3, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;-><init>(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/dlnaclient/DMRClient$1;)V

    invoke-static {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$202(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    .line 87
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$100(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/service/IDMRService;

    move-result-object v1

    iget-object v2, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v2}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$200(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRServiceListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/easydlna/dlna/service/IDMRService;->addDMRCallback(Lcom/easydlna/dlna/service/IDMRCallback;)V

    .line 88
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->DMRServiceStatusNotify(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->DMRServiceStatusNotify(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    invoke-static {v0}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$000(Lcom/easydlna/dlna/dlnaclient/DMRClient;)Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;->DMRServiceStatusNotify(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/easydlna/dlna/dlnaclient/DMRClient$1;->this$0:Lcom/easydlna/dlna/dlnaclient/DMRClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/easydlna/dlna/dlnaclient/DMRClient;->access$102(Lcom/easydlna/dlna/dlnaclient/DMRClient;Lcom/easydlna/dlna/service/IDMRService;)Lcom/easydlna/dlna/service/IDMRService;

    .line 104
    const-string v0, "DMRClient"

    const-string v1, "DMR Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
