.class Lcom/alibaba/sdk/android/feedback/windvane/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/windvane/d;->c:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getWvUIModel()Lcom/alibaba/sdk/android/feedback/xblink/webview/v;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/windvane/d;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/sdk/android/feedback/windvane/f;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/sdk/android/feedback/windvane/f;-><init>(Lcom/alibaba/sdk/android/feedback/windvane/e;Lcom/alibaba/sdk/android/feedback/xblink/webview/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/e;->a:Lcom/alibaba/sdk/android/feedback/windvane/d;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/windvane/d;->a()V

    return-void
.end method
