.class Lcom/kaolafm/sdk/client/KLClientAPI$1;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->init(Landroid/content/Context;Ljava/lang/String;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {p2}, Lcom/kaolafm/sdk/client/IClientAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$002(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/IClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    .line 90
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$100(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    .line 92
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    invoke-interface {v0}, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;->onConnected()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IServiceConnection;->onServiceConnected(Landroid/content/ComponentName;)V

    .line 99
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$002(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/IClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    .line 104
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$300(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    .line 105
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$1;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$200(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kaolafm/sdk/client/IServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 108
    :cond_0
    return-void
.end method
