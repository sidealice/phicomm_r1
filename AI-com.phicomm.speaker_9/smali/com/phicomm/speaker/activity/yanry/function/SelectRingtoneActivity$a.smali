.class Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;
.super Lcom/phicomm/speaker/model/common/a/d;
.source "SelectRingtoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/model/common/a/d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;-><init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    const p1, 0x7f0b00b3

    return p1
.end method

.method protected bridge synthetic a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/Object;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 49
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;->a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 3

    const v0, 0x7f0902b4

    .line 63
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090058

    .line 64
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->b(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-direct {v1, v2, p2}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$b;-><init>(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090027

    .line 68
    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090025

    .line 69
    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity$a;->a:Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;->a(Lcom/phicomm/speaker/activity/yanry/function/SelectRingtoneActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
