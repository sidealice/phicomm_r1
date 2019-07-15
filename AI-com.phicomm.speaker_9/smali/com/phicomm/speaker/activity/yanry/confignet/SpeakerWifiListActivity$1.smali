.class Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity$1;
.super Lcom/phicomm/speaker/model/common/a/b;
.source "SpeakerWifiListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/model/common/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    const p1, 0x7f0b00f1

    return p1
.end method

.method protected a()Lorg/json/JSONArray;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;->a(Lcom/phicomm/speaker/activity/yanry/confignet/SpeakerWifiListActivity;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/phicomm/speaker/model/common/a/g;Ljava/lang/Object;I)V
    .locals 2

    .line 84
    check-cast p2, Lorg/json/JSONArray;

    const p3, 0x7f09031d

    .line 86
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->b(I)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090144

    .line 87
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->c(I)Landroid/widget/ImageView;

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const p3, 0x7f090143

    .line 88
    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/model/common/a/g;->a(I)Landroid/view/View;

    move-result-object p1

    sget-object p3, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->INSECURE:Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/f/a/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/constants/yanry/WifiSecurity;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/phicomm/speaker/constants/yanry/WifiSecurity;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
