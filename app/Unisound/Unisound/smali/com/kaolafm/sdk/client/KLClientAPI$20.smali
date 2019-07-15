.class Lcom/kaolafm/sdk/client/KLClientAPI$20;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$radio:Lcom/kaolafm/sdk/client/Radio;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/Radio;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$20;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$20;->val$radio:Lcom/kaolafm/sdk/client/Radio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$20;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$20;->val$radio:Lcom/kaolafm/sdk/client/Radio;

    invoke-interface {v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI;->switchChannel(Lcom/kaolafm/sdk/client/Radio;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
