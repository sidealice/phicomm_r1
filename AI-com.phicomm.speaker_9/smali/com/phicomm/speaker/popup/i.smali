.class public Lcom/phicomm/speaker/popup/i;
.super Ljava/lang/Object;
.source "ScheduleChoosePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/popup/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcom/phicomm/speaker/views/wheelview/WheelView;

.field private d:Lcom/phicomm/speaker/views/wheelview/WheelView;

.field private e:Lcom/phicomm/speaker/popup/i$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/phicomm/speaker/popup/i;->a:Landroid/app/Activity;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00cd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f09025b

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09027b

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c2

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v0, 0x7f09018a

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object p1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 40
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 41
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 44
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/16 v0, 0x16

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 45
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 46
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v0, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v1, "%02d"

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3, v1}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 47
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v0, Lcom/phicomm/speaker/views/wheelview/a/b;

    const-string v1, "%02d"

    const/16 v3, 0x3b

    invoke-direct {v0, v2, v3, v1}, Lcom/phicomm/speaker/views/wheelview/a/b;-><init>(IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 48
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private a(F)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 83
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 84
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 53
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    .line 66
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/popup/i;->a(F)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/popup/i$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/phicomm/speaker/popup/i;->e:Lcom/phicomm/speaker/popup/i$a;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025b

    if-eq p1, v0, :cond_2

    const v0, 0x7f09027b

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->e:Lcom/phicomm/speaker/popup/i$a;

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->e:Lcom/phicomm/speaker/popup/i$a;

    iget-object v0, p0, Lcom/phicomm/speaker/popup/i;->c:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/popup/i;->d:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/phicomm/speaker/popup/i$a;->a(II)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/popup/i;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/popup/i;->a(F)V

    return-void
.end method
