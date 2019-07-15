.class Lcom/kaolafm/sdk/client/KLClientAPI$22;
.super Landroid/content/BroadcastReceiver;
.source "KLClientAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$22;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/kaolafm/sdk/client/KLClientAPI$22;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v0}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$700(Lcom/kaolafm/sdk/client/KLClientAPI;)V

    .line 720
    return-void
.end method
