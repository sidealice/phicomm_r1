.class Lcom/tencent/smtt/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lcom/tencent/smtt/sdk/s;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/s;Lcom/tencent/smtt/sdk/WebView$WebViewTransport;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/t;->c:Lcom/tencent/smtt/sdk/s;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/t;->b:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->a:Lcom/tencent/smtt/sdk/WebView$WebViewTransport;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$WebViewTransport;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/t;->b:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->b()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$WebViewTransport;->setWebView(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/t;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
