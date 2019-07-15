.class Lcom/alibaba/sdk/android/feedback/xblink/webview/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/webview/q;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
