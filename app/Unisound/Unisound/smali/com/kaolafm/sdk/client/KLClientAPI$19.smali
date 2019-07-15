.class Lcom/kaolafm/sdk/client/KLClientAPI$19;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->getRadioList(Lcom/kaolafm/sdk/client/RadioResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$result:Lcom/kaolafm/sdk/client/RadioResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/RadioResult;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$result:Lcom/kaolafm/sdk/client/RadioResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$19;->val$result:Lcom/kaolafm/sdk/client/RadioResult;

    invoke-interface {v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI;->getRadioList(Lcom/kaolafm/sdk/client/IRadioResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
