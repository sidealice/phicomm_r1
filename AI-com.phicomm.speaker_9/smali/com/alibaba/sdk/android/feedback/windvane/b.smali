.class Lcom/alibaba/sdk/android/feedback/windvane/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "url"

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-static {v1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->access$000(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    sget v1, Lcom/alibaba/sdk/android/feedback/xblink/f/b/a;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mPageAction:Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/windvane/k;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->mPageAction:Lcom/alibaba/sdk/android/feedback/windvane/k;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/windvane/k;->b()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->access$100(Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    iget-object p1, p1, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->webview:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->goBack()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/windvane/b;->a:Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/windvane/CustomHybirdActivity;->finish()V

    return-void
.end method
