.class public Lcom/phicomm/speaker/adapter/b/l;
.super Lcom/phicomm/speaker/adapter/b/a;
.source "SpeakerWeatherItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/adapter/b/a<",
        "Lcom/phicomm/speaker/adapter/a/j;",
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

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/adapter/b/a;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b00aa

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e6

    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->b:Landroid/widget/ImageView;

    const v2, 0x7f09026d

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->c:Landroid/widget/TextView;

    const v2, 0x7f09026c

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->f:Landroid/widget/TextView;

    const v2, 0x7f09026f

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->d:Landroid/widget/TextView;

    const v2, 0x7f09026e

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->e:Landroid/widget/TextView;

    const v2, 0x7f0901d4

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    const v2, 0x7f090161

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->h:Landroid/view/View;

    const v2, 0x7f09013f

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    const v2, 0x7f090178

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->j:Landroid/view/View;

    const v2, 0x7f090175

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->k:Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/manager/imageloader/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v2

    const v3, 0x7f0800a8

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/h;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 52
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v4, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/phicomm/speaker/manager/imageloader/GlideCircleTransform;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/c;

    move-result-object p1

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/l;->b:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/j;)V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/b/l;->a(Landroid/widget/TextView;)V

    .line 77
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/j;->a()Lnluparser/scheme/WeatherResult;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lnluparser/scheme/WeatherResult;->getWeatherDays()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnluparser/scheme/WeatherResult;->getFocusDateIndex()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnluparser/scheme/WeatherResult$WeatherDay;

    .line 79
    invoke-virtual {p1}, Lnluparser/scheme/WeatherResult$WeatherDay;->getHighestTemperature()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lnluparser/scheme/WeatherResult$WeatherDay;->getLowestTemperature()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/b/l;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/phicomm/speaker/adapter/b/l;->a:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const v0, 0x7f0f024f

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lnluparser/scheme/WeatherResult$WeatherDay;->getWeather()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0801dd

    const v2, 0x7f0801dc

    if-eqz v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->e:Landroid/widget/TextView;

    const-string v0, "\u6674"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u8f6c"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x8

    const v4, 0x7f0801d5

    if-eqz v0, :cond_1

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 92
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "\u96ea"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    const v0, 0x7f0801da

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    const v0, 0x7f0801db

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const-string v0, "\u96e8"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    const v0, 0x7f0801d8

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    const v0, 0x7f0801d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const-string v0, "\u4e91"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    const v0, 0x7f0801d3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    const v0, 0x7f0801d4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const-string v0, "\u6674"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    const-string v0, "\u9634"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    const v0, 0x7f0801d6

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    const v0, 0x7f0801d7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 109
    :cond_6
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->g:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/l;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/phicomm/speaker/adapter/a/j;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/l;->a(Lcom/phicomm/speaker/adapter/a/j;)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->h:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->j:Landroid/view/View;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/l;->k:Landroid/view/View;

    return-object v0
.end method
