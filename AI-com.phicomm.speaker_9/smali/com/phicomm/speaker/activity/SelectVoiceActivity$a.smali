.class Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;
.super Lcom/phicomm/speaker/model/common/a/d;
.source "SelectVoiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/SelectVoiceActivity;
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
.field final synthetic a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;Lcom/phicomm/speaker/activity/SelectVoiceActivity$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;-><init>(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)V

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

    .line 139
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/f;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 3

    const v0, 0x7f0902b4

    .line 155
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->b(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090058

    .line 156
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 157
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->a(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 159
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090027

    .line 160
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090025

    .line 163
    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/model/common/a/f;->a(I)Landroid/view/View;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->c(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object p2, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
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

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SelectVoiceActivity$a;->a:Lcom/phicomm/speaker/activity/SelectVoiceActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SelectVoiceActivity;->b(Lcom/phicomm/speaker/activity/SelectVoiceActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
