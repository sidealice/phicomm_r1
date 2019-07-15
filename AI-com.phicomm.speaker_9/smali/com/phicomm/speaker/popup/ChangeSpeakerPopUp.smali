.class public Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;
.super Ljava/lang/Object;
.source "ChangeSpeakerPopUp.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/PopupWindow;

.field private e:I

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    .line 29
    iput v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->e:I

    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->c()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902ff

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->b:Landroid/widget/TextView;

    const v1, 0x7f09012e

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->c:Landroid/widget/ImageView;

    .line 58
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    const v2, 0x7f1000c1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    const/16 v2, 0x30

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 81
    iget-object p1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->f:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 82
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->f:Landroid/os/Handler;

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->f:Landroid/os/Handler;

    new-instance v0, Lcom/phicomm/speaker/popup/a;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/a;-><init>(Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;)V

    iget v1, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->e:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method final synthetic b()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/popup/ChangeSpeakerPopUp;->c:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    :cond_0
    return-void
.end method
