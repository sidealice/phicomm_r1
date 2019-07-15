.class public Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "WifiConnectActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/b/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

.field private d:Lcom/phicomm/speaker/b/e;

.field private e:Z

.field private f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

.field private g:Z

.field private h:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

.field private i:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

.field private j:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

.field mIvScan:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field mTvDownTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030a
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09030b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;->cancel()V

    .line 133
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;JJ)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->mTvDownTime:Landroid/widget/TextView;

    const-string v1, "%ss"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 255
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)Lcom/phicomm/speaker/bean/confignet/DeviceInfo;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    return-object p0
.end method

.method static final synthetic c(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method static final synthetic e(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 212
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method static final synthetic f(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 205
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 139
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/e;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/e;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    return-void
.end method

.method static final synthetic h(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    const-class p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->abort()V

    return-void
.end method

.method private k()V
    .locals 13

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->j:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isTryAgainForConnectionFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/phicomm/speaker/views/i;

    const v3, 0x7f0f0072

    const v4, 0x7f0f0071

    const v5, 0x7f0f00b4

    sget-object v6, Lcom/phicomm/speaker/activity/yanry/confignet/k;->a:Lcom/phicomm/speaker/c/c;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/phicomm/speaker/views/i;-><init>(Landroid/content/Context;IIILcom/phicomm/speaker/c/c;)V

    .line 230
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/i;->show()V

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Lcom/phicomm/speaker/views/i;

    const v9, 0x7f0f0072

    const v10, 0x7f0f0071

    const v11, 0x7f0f007d

    new-instance v12, Lcom/phicomm/speaker/activity/yanry/confignet/l;

    invoke-direct {v12, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/l;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)V

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/phicomm/speaker/views/i;-><init>(Landroid/content/Context;IIILcom/phicomm/speaker/c/c;)V

    .line 236
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/i;->show()V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 271
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 272
    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AP_CONFIGWIFI_SUCCEED"

    goto :goto_0

    :cond_0
    const-string v0, "BL_CONFIGWIFI_SUCCEED"

    .line 271
    :goto_0
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isNeedBind()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7530

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(J)V

    .line 275
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->mTvTitle:Landroid/widget/TextView;

    const v1, 0x7f0f028e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->h:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->i:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V

    goto :goto_1

    .line 279
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/ChangeNetSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v0

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/a/a;->d(Ljava/lang/String;)Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 283
    new-instance v0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;-><init>()V

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->i:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->setSsid(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/phicomm/speaker/e/b;->a()Lcom/phicomm/speaker/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/e/b;->b()Lcom/phicomm/speaker/e/a/a;

    move-result-object v1

    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/e/a/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    .line 288
    new-instance v1, Lcom/phicomm/speaker/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/phicomm/speaker/a/k;-><init>(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->finish()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/jaeger/library/a;->a(Landroid/app/Activity;II)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->mIvScan:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 81
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->j:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->j:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getPresenter()Lcom/phicomm/speaker/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->d:Lcom/phicomm/speaker/b/e;

    .line 83
    new-instance v0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$1;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->h:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    .line 126
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g()V

    return-void
.end method

.method public a(I)V
    .locals 9

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g:Z

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "code"

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-class v2, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AP_CONFIGWIFI_FAILED"

    goto :goto_0

    :cond_0
    const-string v2, "BL_CONFIGWIFI_FAILED"

    :goto_0
    invoke-static {p0, v2, v1}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    packed-switch p1, :pswitch_data_0

    .line 209
    :pswitch_0
    iget-boolean v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 210
    new-instance v1, Lcom/phicomm/speaker/views/e;

    const v3, 0x7f0f0079

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f00b4

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/phicomm/speaker/activity/yanry/confignet/i;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 213
    invoke-virtual {v1}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_1

    .line 203
    :pswitch_1
    new-instance p1, Lcom/phicomm/speaker/views/i;

    const v5, 0x7f0f0074

    const v6, 0x7f0f0073

    const v7, 0x7f0f00b4

    sget-object v8, Lcom/phicomm/speaker/activity/yanry/confignet/h;->a:Lcom/phicomm/speaker/c/c;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/phicomm/speaker/views/i;-><init>(Landroid/content/Context;IIILcom/phicomm/speaker/c/c;)V

    .line 206
    invoke-virtual {p1}, Lcom/phicomm/speaker/views/i;->show()V

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->k()V

    goto :goto_1

    .line 215
    :cond_1
    iput-boolean v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    .line 216
    new-instance v1, Lcom/phicomm/speaker/views/e;

    const v3, 0x7f0f0078

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p0, v3, v2}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f020b

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/phicomm/speaker/activity/yanry/confignet/j;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/j;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 219
    invoke-virtual {v1}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0064

    .line 72
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->setContentView(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V
    .locals 5

    .line 251
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isNeedBind()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    .line 253
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const-string v1, "udid: %s%ndeviceid: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u786e\u5b9a"

    sget-object v2, Lcom/phicomm/speaker/activity/yanry/confignet/m;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 256
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    return-void

    .line 259
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    .line 260
    iget-boolean p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g:Z

    if-nez p1, :cond_2

    const-class p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {p1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->l()V

    :cond_3
    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    .line 170
    iget-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const v1, 0x7f0f0076

    const v2, 0x7f0f00b4

    sget-object v3, Lcom/phicomm/speaker/activity/yanry/confignet/f;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 174
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->e:Z

    .line 177
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const v1, 0x7f0f0077

    const v2, 0x7f0f020b

    new-instance v3, Lcom/phicomm/speaker/activity/yanry/confignet/g;

    invoke-direct {v3, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/g;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;)V

    .line 180
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_0
    return-void
.end method

.method final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 233
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->j:Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->setTryAgainForConnectionFail(Z)V

    .line 234
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 235
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method final synthetic d(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 217
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 218
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g:Z

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->f:Lcom/phicomm/speaker/bean/confignet/DeviceInfo;

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->l()V

    .line 246
    :cond_0
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isNeedBind()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->k()V

    return-void
.end method

.method final synthetic f()V
    .locals 3

    const-wide/16 v0, 0x7530

    .line 140
    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a(J)V

    .line 142
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->fromJson(Lorg/json/JSONObject;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->i:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    const-string v1, "password"

    .line 144
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->d:Lcom/phicomm/speaker/b/e;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/phicomm/speaker/b/e;->a(Ljava/lang/String;Lcom/phicomm/speaker/b/h;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b()V

    .line 148
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic g(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 179
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->g()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 156
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->d:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->a(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->d:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/e;->b()V

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->h:Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/BindDevicePresenter;->d()V

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;->b:Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity$a;->cancel()V

    .line 161
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method
