.class public Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "ConfigNetActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/b/h;


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:Lorg/json/JSONArray;

.field private d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

.field private e:Lcom/phicomm/speaker/b/e;

.field private f:Landroid/content/SharedPreferences;

.field mEtPwd:Lcom/phicomm/speaker/views/MyEditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090097
    .end annotation
.end field

.field mIvGotoWifiList:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field mLoading:Landroid/widget/ImageView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field mRlWifiName:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901d5
    .end annotation
.end field

.field mTvCancel:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090277
    .end annotation
.end field

.field mTvNoNeedPwd:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090279
    .end annotation
.end field

.field mTvWifiName:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;)V
    .locals 4

    .line 164
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 168
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 170
    sget-object v0, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->INSECURE:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSecurity()Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->g()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvNoNeedPwd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/MyEditText;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/MyEditText;->setContent(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvNoNeedPwd:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/MyEditText;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .locals 2

    .line 224
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 225
    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AP_GETWIFILIST_FAILED"

    goto :goto_0

    :cond_0
    const-string v0, "BL_GETWIFILIST_FAILED"

    .line 224
    :goto_0
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    const v1, 0x7f0f00df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 231
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "com.phicomm.speaker.yanry.common"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->f:Landroid/content/SharedPreferences;

    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    const v2, 0x7f0f0075

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 92
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->getPresenter()Lcom/phicomm/speaker/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->e:Lcom/phicomm/speaker/b/e;

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->a(Lcom/phicomm/speaker/b/h;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b002b

    .line 73
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->setContentView(I)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/confignet/DeviceInfo;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 4

    .line 191
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "count"

    .line 192
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-class v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    .line 194
    invoke-static {v0}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/ConfigNetBeen;->isApMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AP_GETWIFILIST_SUCCEED"

    goto :goto_0

    :cond_0
    const-string v0, "BL_GETWIFILIST_SUCCEED"

    .line 193
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/phicomm/speaker/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->b:Lorg/json/JSONArray;

    .line 196
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_3

    .line 197
    iget-object p2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->f:Landroid/content/SharedPreferences;

    const-string v1, "confignet.connectedssid"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    move v1, v0

    .line 200
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 201
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-static {v2}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->fromJsonArray(Lorg/json/JSONArray;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->fromJsonArray(Lorg/json/JSONArray;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 210
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mTvWifiName:Landroid/widget/TextView;

    const p2, 0x7f0f0290

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 214
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->g()V

    .line 215
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 216
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mLoading:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mIvGotoWifiList:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mRlWifiName:Landroid/widget/RelativeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :goto_2
    return-void
.end method

.method public b()V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->k()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->tv_config_net_cancel()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->k()V

    return-void
.end method

.method final synthetic f()V
    .locals 3

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/WifiConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "info"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2766

    if-ne p1, p2, :cond_0

    :try_start_0
    const-string p1, "info"

    .line 150
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->fromJsonArray(Ljava/lang/String;)Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->a(Lcom/phicomm/speaker/bean/confignet/WifiInfo;)V

    .line 151
    new-instance p1, Lorg/json/JSONArray;

    const-string p2, "list"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->b:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 153
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->b()V

    .line 154
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0}, Lcom/phicomm/speaker/b/e;->b()V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->e:Lcom/phicomm/speaker/b/e;

    invoke-interface {v0, p0}, Lcom/phicomm/speaker/b/e;->a(Ljava/lang/Object;)V

    .line 100
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method rl_config_net_ssid()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0901d5
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->b:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    const-string v1, "list"

    .line 139
    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x2766

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method tv_config_net_cancel()V
    .locals 0
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090277
        }
    .end annotation

    .line 110
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method tv_config_net_connect()V
    .locals 3
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f090278
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSecurity()Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->INSECURE:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    if-eq v0, v1, :cond_3

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->mEtPwd:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getAllContent()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "^[\\x00-\\xff]+$"

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f0f006f

    .line 122
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->setPassword(Ljava/lang/String;)V

    .line 126
    const-class v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;

    invoke-static {v1}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/presenter/yanry/confignet/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f0f007c

    .line 119
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    return-void

    .line 129
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confignet.connectedssid"

    iget-object v2, p0, Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;->d:Lcom/phicomm/speaker/bean/confignet/WifiInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/confignet/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    .line 130
    new-instance v1, Lcom/phicomm/speaker/activity/yanry/confignet/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/yanry/confignet/a;-><init>(Lcom/phicomm/speaker/activity/yanry/confignet/ConfigNetActivity;)V

    invoke-static {p0, v0, v1}, Lcom/phicomm/speaker/f/a/c;->a(Landroid/content/Context;ZLjava/lang/Runnable;)V

    :cond_4
    return-void
.end method
