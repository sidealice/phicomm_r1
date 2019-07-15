.class public Lcom/phicomm/speaker/adapter/b/e;
.super Lcom/phicomm/speaker/adapter/b/a;
.source "SpeakerAlarmItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/adapter/b/a<",
        "Lcom/phicomm/speaker/adapter/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b00a2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e6

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->b:Landroid/widget/ImageView;

    const v2, 0x7f09026c

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->c:Landroid/widget/TextView;

    const v2, 0x7f09025d

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->d:Landroid/widget/TextView;

    const v2, 0x7f09025e

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->e:Landroid/widget/TextView;

    const v2, 0x7f09025f

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->f:Landroid/widget/TextView;

    const v2, 0x7f090161

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->g:Landroid/view/View;

    const v2, 0x7f090178

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->h:Landroid/view/View;

    const v2, 0x7f090175

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/e;->i:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    const v3, 0x7f0800a8

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 51
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/e;->b:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/c;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/e;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/b/e;->a(Landroid/widget/TextView;)V

    .line 75
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/c;->a()Lnluparser/scheme/AlarmIntent;

    move-result-object v0

    const-string v1, "SpeakerAlarmItemView"

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " alarmIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/e;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getTime()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "OFF"

    .line 87
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string p1, "WEEKEND"

    .line 89
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->f:Landroid/widget/TextView;

    const-string v0, "\u5468\u672b"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string p1, "WORKDAY"

    .line 91
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->f:Landroid/widget/TextView;

    const-string v0, "\u5de5\u4f5c\u65e5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string p1, "DAY"

    .line 93
    invoke-virtual {v0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/e;->f:Landroid/widget/TextView;

    const-string v0, "\u6bcf\u65e5"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/phicomm/speaker/adapter/a/c;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/e;->a(Lcom/phicomm/speaker/adapter/a/c;)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/e;->g:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/e;->h:Landroid/view/View;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/e;->i:Landroid/view/View;

    return-object v0
.end method
