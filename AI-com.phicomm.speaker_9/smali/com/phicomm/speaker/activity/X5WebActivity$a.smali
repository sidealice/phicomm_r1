.class Lcom/phicomm/speaker/activity/X5WebActivity$a;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "X5WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/X5WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/X5WebActivity;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/activity/X5WebActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/phicomm/speaker/activity/X5WebActivity$a;->a:Lcom/phicomm/speaker/activity/X5WebActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/activity/X5WebActivity;Lcom/phicomm/speaker/activity/X5WebActivity$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/X5WebActivity$a;-><init>(Lcom/phicomm/speaker/activity/X5WebActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/phicomm/speaker/activity/X5WebActivity$a;->a:Lcom/phicomm/speaker/activity/X5WebActivity;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/X5WebActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 187
    iget-object p1, p0, Lcom/phicomm/speaker/activity/X5WebActivity$a;->a:Lcom/phicomm/speaker/activity/X5WebActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/X5WebActivity;->a(Lcom/phicomm/speaker/activity/X5WebActivity;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/activity/X5WebActivity$a;->a:Lcom/phicomm/speaker/activity/X5WebActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/X5WebActivity;->a(Lcom/phicomm/speaker/activity/X5WebActivity;)V

    return-void
.end method
