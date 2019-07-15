.class public Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "CustomWakeNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/yanry/a;

.field etName:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09009d
    .end annotation
.end field

.field layoutStar:Landroid/view/ViewGroup;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090154
    .end annotation
.end field

.field vClear:Landroid/view/View;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ea
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const v0, 0x7f0f00a1

    .line 49
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->e(I)V

    const v0, 0x7f0f020e

    .line 50
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->f(I)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 164
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b002f

    .line 44
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 6

    .line 127
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/phicomm/speaker/f/x;->c(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0f0114

    if-nez v0, :cond_0

    .line 130
    new-instance p1, Lcom/phicomm/speaker/views/e;

    const v0, 0x7f0f028a

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/a;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/a;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 134
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->show()V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-le v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "\u5c0f\u8baf\u5c0f\u8baf"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 146
    const-class v3, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v3}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v3}, Lcom/phicomm/speaker/presenter/yanry/i;->d()Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 148
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 150
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 155
    invoke-static {v5}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 161
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->layoutStar:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    new-instance p1, Lcom/phicomm/speaker/views/e;

    const v0, 0x7f0f0289

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/c;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/c;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 165
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_3

    :cond_4
    const v0, 0x7f0f0133

    .line 167
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->j(I)V

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/yanry/a;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 138
    :cond_5
    :goto_2
    new-instance p1, Lcom/phicomm/speaker/views/e;

    const v0, 0x7f0f028b

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/b;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/b;-><init>(Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;)V

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 141
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_3
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->vClear:Landroid/view/View;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 140
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final synthetic c(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 132
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    return-void
.end method

.method clearInput()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0900ea
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->etName:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/a;->a(Lcom/phicomm/speaker/b/d;)V

    .line 122
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
