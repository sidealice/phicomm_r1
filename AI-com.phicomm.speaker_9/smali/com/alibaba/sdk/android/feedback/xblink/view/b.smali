.class Lcom/alibaba/sdk/android/feedback/xblink/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/view/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/view/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/view/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/a;->a(Lcom/alibaba/sdk/android/feedback/xblink/view/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/view/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/view/a;

    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/xblink/view/a;->b(Lcom/alibaba/sdk/android/feedback/xblink/view/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
