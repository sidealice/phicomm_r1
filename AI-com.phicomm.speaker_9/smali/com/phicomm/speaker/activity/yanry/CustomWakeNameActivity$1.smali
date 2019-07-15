.class Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;
.super Lcom/phicomm/speaker/presenter/yanry/a;
.source "CustomWakeNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/yanry/a;-><init>()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j()V

    .line 80
    new-instance v0, Lcom/phicomm/speaker/views/e;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/d;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/d;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;)V

    const v3, 0x7f0f011f

    const v4, 0x7f0f0114

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 83
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6"

    .line 99
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j()V

    return-void
.end method

.method protected a(I)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j()V

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->d()V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j()V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 61
    div-int/lit8 v0, p2, 0x2

    .line 62
    rem-int/lit8 p2, p2, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 64
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    iget-object p2, p2, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-ge v1, v0, :cond_1

    const v3, 0x7f0801c0

    .line 66
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    if-ne v1, v0, :cond_2

    if-eqz v2, :cond_2

    const v3, 0x7f0801c1

    .line 68
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0801c2

    .line 70
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 74
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->d()V

    :cond_4
    return-void
.end method

.method protected b()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j()V

    const v0, 0x7f0f0236

    .line 112
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->setResult(I)V

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->finish()V

    return-void
.end method
