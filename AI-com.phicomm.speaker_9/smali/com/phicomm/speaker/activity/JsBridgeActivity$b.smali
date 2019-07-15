.class Lcom/phicomm/speaker/activity/JsBridgeActivity$b;
.super Ljava/lang/Object;
.source "JsBridgeActivity.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/JsBridgeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/JsBridgeActivity;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$b;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;Lcom/phicomm/speaker/activity/JsBridgeActivity$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/JsBridgeActivity$b;-><init>(Lcom/phicomm/speaker/activity/JsBridgeActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 345
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 346
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    iget-object p1, p0, Lcom/phicomm/speaker/activity/JsBridgeActivity$b;->a:Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/JsBridgeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
