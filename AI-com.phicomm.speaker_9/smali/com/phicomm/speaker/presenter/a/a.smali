.class public Lcom/phicomm/speaker/presenter/a/a;
.super Ljava/lang/Object;
.source "BannerUrlHandler.java"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http"

    .line 42
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->a:Ljava/lang/String;

    const-string v0, "https"

    .line 43
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->b:Ljava/lang/String;

    const-string v0, "phiai"

    .line 44
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->c:Ljava/lang/String;

    const-string v0, "phiai://common"

    .line 45
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->d:Ljava/lang/String;

    const-string v0, "title"

    .line 47
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->e:Ljava/lang/String;

    const-string v0, "imgurl"

    .line 48
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->f:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/a/a;->g:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 180
    invoke-static {}, Lcom/phicomm/speaker/e/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    const-class v3, Lcom/phicomm/speaker/activity/yanry/function/ReminderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "://"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 74
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "https"

    const/4 v2, 0x0

    .line 77
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http"

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "phiai"

    .line 79
    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phiai://common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->c(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 89
    invoke-static {p1}, Lcom/phicomm/speaker/f/f;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "title"

    .line 90
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "imgurl"

    .line 91
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 92
    invoke-static {v0}, Lcom/phicomm/speaker/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p1}, Lcom/phicomm/speaker/f/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "BannerUrlHandler"

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoCommonActivity title = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " imgUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    const-class v3, Lcom/phicomm/speaker/activity/BannerCommonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "title"

    .line 97
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "imageurl"

    .line 98
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    const-class v2, Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INTENT_URL"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "phiai://functionIntroduction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "phiai://function"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "phiai://me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "phiai://fm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "phiai://countdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "phiai://mySpeakers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "phiai://usageGuide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "phiai://usageDetailInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "phiai://feedback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "phiai://schedule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "phiai://myCollection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_1

    :sswitch_b
    const-string v0, "phiai://personInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :sswitch_c
    const-string v0, "phiai://voiceRecorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_d
    const-string v0, "phiai://speakerSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :sswitch_e
    const-string v0, "phiai://commandsList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_f
    const-string v0, "phiai://player"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_10
    const-string v0, "phiai://commandDetailInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_11
    const-string v0, "phiai://music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_12
    const-string v0, "phiai://clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_13
    const-string v0, "phiai://about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 168
    :pswitch_0
    const-class p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 163
    :pswitch_1
    const-class p1, Lcom/phicomm/speaker/activity/AboutActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 159
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    const-class v2, Lcom/phicomm/speaker/activity/JsBridgeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "INTENT_URL"

    const-string v2, "http://172.31.34.42:8180/#/help"

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 150
    :pswitch_3
    invoke-static {}, Lcom/phicomm/speaker/f/u;->c()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/a/a;->h:Landroid/app/Activity;

    const v0, 0x7f0f0178

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const p1, 0x7f08007b

    .line 153
    invoke-static {p1}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->setBackIcon(I)V

    .line 154
    invoke-static {}, Lcom/alibaba/sdk/android/feedback/impl/FeedbackAPI;->openFeedbackActivity()V

    goto :goto_2

    .line 147
    :pswitch_4
    const-class p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 144
    :pswitch_5
    const-class p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 141
    :pswitch_6
    const-class p1, Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 136
    :pswitch_7
    const-class p1, Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 129
    :pswitch_8
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/MemoActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 126
    :pswitch_9
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/presenter/a/a;->a(I)V

    goto :goto_2

    .line 123
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/presenter/a/a;->a(I)V

    goto :goto_2

    .line 120
    :pswitch_b
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/presenter/a/a;->a(I)V

    goto :goto_2

    .line 117
    :pswitch_c
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/FmAlbumActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    goto :goto_2

    .line 114
    :pswitch_d
    const-class p1, Lcom/phicomm/speaker/activity/yanry/function/MusicActivity;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/Class;)V

    :goto_2
    :pswitch_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fcd4f74 -> :sswitch_13
        -0x7fac96f3 -> :sswitch_12
        -0x7f1b84dc -> :sswitch_11
        -0x669d3f37 -> :sswitch_10
        -0x5fbd523e -> :sswitch_f
        -0x53d5ae99 -> :sswitch_e
        -0x4fc644ce -> :sswitch_d
        -0x419d45f1 -> :sswitch_c
        -0x148383fc -> :sswitch_b
        -0x13b3e875 -> :sswitch_a
        0xb17138 -> :sswitch_9
        0x1ee0ca26 -> :sswitch_8
        0x1f477f5f -> :sswitch_7
        0x58c8e43c -> :sswitch_6
        0x5f496081 -> :sswitch_5
        0x6faa4bb0 -> :sswitch_4
        0x78fab828 -> :sswitch_3
        0x78fab8f9 -> :sswitch_2
        0x7c9a5279 -> :sswitch_1
        0x7f2d1133 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 3

    const-string v0, "BannerUrlHandler"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBannerClick position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/a/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/BannerBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/BannerBean;->getForward_url()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
