.class public Lcom/phicomm/speaker/views/MyScrollView;
.super Landroid/widget/ScrollView;
.source "MyScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/MyScrollView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/OverScroller;

.field private b:Z

.field private c:Lcom/phicomm/speaker/views/MyScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->b:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/MyScrollView;->setMyScroller(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->b:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->c:Lcom/phicomm/speaker/views/MyScrollView$a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->c:Lcom/phicomm/speaker/views/MyScrollView$a;

    invoke-interface {v0}, Lcom/phicomm/speaker/views/MyScrollView$a;->a()V

    :cond_0
    return-void
.end method

.method private setMyScroller(Landroid/content/Context;)V
    .locals 1

    .line 40
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->a:Landroid/widget/OverScroller;

    .line 43
    :try_start_0
    const-class p1, Landroid/widget/ScrollView;

    const-string v0, "mScroller"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyScrollView;->a:Landroid/widget/OverScroller;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 101
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyScrollView;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/MyScrollView;->b:Z

    .line 90
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyScrollView;->a()V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/MyScrollView;->b:Z

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollCompleteListener(Lcom/phicomm/speaker/views/MyScrollView$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyScrollView;->c:Lcom/phicomm/speaker/views/MyScrollView$a;

    return-void
.end method
