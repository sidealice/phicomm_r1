.class public Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SelectRepeatActivity.java"


# instance fields
.field cbFriday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090059
    .end annotation
.end field

.field cbMonday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005a
    .end annotation
.end field

.field cbSaturday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005b
    .end annotation
.end field

.field cbSunday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005c
    .end annotation
.end field

.field cbThursday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005d
    .end annotation
.end field

.field cbTuesday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field cbWednesday:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/CheckBox;)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7a4c5d35

    if-eq v1, v2, :cond_2

    const v2, 0x1077c

    if-eq v1, v2, :cond_1

    const v2, 0x73ec0047

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "WEEKEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "DAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "WORKDAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "12345"

    return-object v0

    :pswitch_1
    const-string v0, "67"

    return-object v0

    :pswitch_2
    const-string v0, "1234567"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x7

    .line 71
    new-array v1, v0, [Z

    .line 72
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbMonday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    .line 73
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbTuesday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    aput-boolean v2, v1, v4

    .line 74
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbWednesday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x2

    aput-boolean v2, v1, v5

    .line 75
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbThursday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x3

    aput-boolean v2, v1, v5

    .line 76
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbFriday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x4

    aput-boolean v2, v1, v5

    .line 77
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSaturday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x5

    aput-boolean v2, v1, v5

    .line 78
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSunday:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x6

    aput-boolean v2, v1, v5

    .line 79
    new-array v2, v0, [Z

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "DAY"

    return-object v0

    .line 81
    :cond_0
    new-array v2, v0, [Z

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "WORKDAY"

    return-object v0

    .line 83
    :cond_1
    new-array v2, v0, [Z

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "WEEKEND"

    return-object v0

    .line 85
    :cond_2
    new-array v0, v0, [Z

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OFF"

    return-object v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_5

    .line 90
    aget-boolean v2, v1, v3

    if-eqz v2, :cond_4

    const/16 v2, 0x44

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f0208

    .line 39
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->e(I)V

    .line 40
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->b()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbMonday:Landroid/widget/CheckBox;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbTuesday:Landroid/widget/CheckBox;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbWednesday:Landroid/widget/CheckBox;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 44
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbThursday:Landroid/widget/CheckBox;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbFriday:Landroid/widget/CheckBox;

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSaturday:Landroid/widget/CheckBox;

    const-string v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSunday:Landroid/widget/CheckBox;

    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b003d

    .line 34
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->setContentView(I)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "repeat"

    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->c()V

    return-void
.end method

.method public selectFriday(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbFriday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectMonday(Landroid/view/View;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbMonday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectSaturday(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSaturday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectSunday(Landroid/view/View;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbSunday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectThursday(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbThursday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectTuesday(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbTuesday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method

.method public selectWednesday(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->cbWednesday:Landroid/widget/CheckBox;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/function/SelectRepeatActivity;->a(Landroid/widget/CheckBox;)V

    return-void
.end method
