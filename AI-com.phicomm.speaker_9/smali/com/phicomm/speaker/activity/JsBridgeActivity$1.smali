.class Lcom/phicomm/speaker/activity/JsBridgeActivity$1;
.super Ljava/lang/Object;
.source "JsBridgeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/JsBridgeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/JsBridgeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$1;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    const v2, 0x7f0f0179

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->a(Lcom/phicomm/speaker/activity/JsBridgeActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
