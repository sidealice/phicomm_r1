.class Lcom/kaolafm/sdk/client/KLClientAPI$15;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->play(Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$keywords:Ljava/lang/String;

.field final synthetic val$playResult:Lcom/kaolafm/sdk/client/PlayResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Ljava/lang/String;Lcom/kaolafm/sdk/client/PlayResult;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->val$keywords:Ljava/lang/String;

    iput-object p3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .prologue
    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->val$keywords:Ljava/lang/String;

    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$15;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-interface {v1, v2, v3}, Lcom/kaolafm/sdk/client/IClientAPI;->playByKeywords(Ljava/lang/String;Lcom/kaolafm/sdk/client/IPlayResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
