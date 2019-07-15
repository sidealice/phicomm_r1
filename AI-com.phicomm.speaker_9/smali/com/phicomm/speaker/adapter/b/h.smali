.class public Lcom/phicomm/speaker/adapter/b/h;
.super Lcom/phicomm/speaker/adapter/b/a;
.source "SpeakerDateReminderItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/adapter/b/a<",
        "Lcom/phicomm/speaker/adapter/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


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

    const v2, 0x7f0b00a4

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900e6

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->c:Landroid/widget/ImageView;

    const v2, 0x7f090260

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->d:Landroid/widget/TextView;

    const v2, 0x7f09026c

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->b:Landroid/widget/TextView;

    const v2, 0x7f090261

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->e:Landroid/widget/TextView;

    const v2, 0x7f090263

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->f:Landroid/widget/TextView;

    const v2, 0x7f090262

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->g:Landroid/widget/TextView;

    const v2, 0x7f090161

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->h:Landroid/view/View;

    const v2, 0x7f090178

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->i:Landroid/view/View;

    const v2, 0x7f090175

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->j:Landroid/view/View;

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

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/h;->c:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/f/b/j;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/f;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/h;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/b/h;->a(Landroid/widget/TextView;)V

    .line 76
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/f;->a()Lnluparser/scheme/ReminderIntent;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnluparser/scheme/ReminderIntent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/h;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/a/f;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Lnluparser/scheme/ReminderIntent;->getDateTime()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const-string v2, "yyyy-MM-dd"

    .line 84
    invoke-static {p1, v1, v2}, Lcom/phicomm/speaker/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    const-string v3, "HH:mm"

    .line 85
    invoke-static {p1, v2, v3}, Lcom/phicomm/speaker/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object v2, p0, Lcom/phicomm/speaker/adapter/b/h;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/b/h;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 89
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/h;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/h;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/adapter/b/h;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lnluparser/scheme/ReminderIntent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/phicomm/speaker/adapter/a/f;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/h;->a(Lcom/phicomm/speaker/adapter/a/f;)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/h;->h:Landroid/view/View;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/h;->i:Landroid/view/View;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/h;->j:Landroid/view/View;

    return-object v0
.end method
