.class public Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;
.super Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;


# instance fields
.field private progressbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;->progressbar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;->progressbar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/CustomWebChromeClient;->progressbar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
