.class Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;
.super Ljava/lang/Object;
.source "DefaultMemoRingingHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    const-string v0, "memolog-RingHandler"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    check-cast p2, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;->getService()Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->access$002(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;)Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    .line 83
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 86
    const-string v0, "memolog-RingHandler"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->access$002(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;)Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    .line 88
    return-void
.end method
