.class Lcom/alibaba/sdk/android/feedback/xblink/webview/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/h;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/HybridWebChromeClient;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/h;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/h;->a:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
