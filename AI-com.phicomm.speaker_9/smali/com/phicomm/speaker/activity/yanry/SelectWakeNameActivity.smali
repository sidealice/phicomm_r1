.class public Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "SelectWakeNameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/phicomm/speaker/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/base/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/phicomm/speaker/b/g<",
        "Lcom/phicomm/speaker/bean/MqttDeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/presenter/yanry/j;

.field listView:Landroid/widget/ListView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090179
    .end annotation
.end field

.field requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f0f024e

    .line 47
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->e(I)V

    .line 49
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    .line 77
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->a(Lcom/phicomm/speaker/b/g;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0058

    .line 42
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->setContentView(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V
    .locals 1

    const-string p1, "SelectWakeNameActivity accept"

    const/4 v0, 0x0

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a(Lcom/phicomm/speaker/bean/MqttDeviceInfo;)V

    return-void
.end method

.method customWord()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09003e
        }
    .end annotation

    .line 120
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/i;->d()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const v0, 0x7f0f01fb

    .line 122
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/CustomWakeNameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x47

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x47

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "SelectWakeNameActivity onActivityResult"

    const/4 p2, 0x0

    .line 113
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->requestLayout:Lcom/phicomm/speaker/views/widget/RequestLayout;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Lcom/phicomm/speaker/views/widget/RequestLayout;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f00a9

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 93
    :try_start_0
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v1}, Lcom/phicomm/speaker/presenter/yanry/i;->d()Lorg/json/JSONArray;

    move-result-object v1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/presenter/yanry/j;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 82
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-eqz p2, :cond_0

    const p2, 0x7f0f00a9

    .line 83
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    const p2, 0x7f0f004d

    .line 84
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/j;->b()V

    .line 105
    const-class v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/presenter/yanry/i;->b(Lcom/phicomm/speaker/b/g;)V

    .line 106
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/j;->d()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 134
    :cond_0
    :try_start_0
    const-class p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/yanry/i;->d()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 135
    const-class p2, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {p2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {p2}, Lcom/phicomm/speaker/presenter/yanry/i;->c()Lcom/phicomm/speaker/bean/MqttDeviceInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/MqttDeviceInfo;->getWakeWord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->finish()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/SelectWakeNameActivity;->a:Lcom/phicomm/speaker/presenter/yanry/j;

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/yanry/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
