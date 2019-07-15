.class public Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;
.super Landroid/widget/FrameLayout;
.source "PtrClassicDefaultFooter.java"

# interfaces
.implements Lin/srain/cube/views/ptr/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;
    }
.end annotation


# static fields
.field private static d:Ljava/text/SimpleDateFormat;


# instance fields
.field protected a:Landroid/view/animation/RotateAnimation;

.field protected b:Landroid/view/animation/RotateAnimation;

.field protected c:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:J

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x96

    .line 23
    iput p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    .line 34
    new-instance p1, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$1;)V

    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    .line 38
    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c()V

    .line 119
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 123
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 124
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 184
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 185
    :cond_2
    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 263
    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()Z

    move-result p1

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    sget v0, Lin/srain/cube/views/ptr/R$string;->cube_ptr_release_to_load:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private e(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/srain/cube/views/ptr/R$string;->cube_ptr_pull_up_to_load:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/srain/cube/views/ptr/R$string;->cube_ptr_pull_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .locals 7

    .line 199
    iget-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cube_ptr_classic_last_update"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    .line 202
    :cond_0
    iget-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-nez v4, :cond_1

    return-object v0

    .line 205
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    sub-long v5, v1, v3

    const-wide/16 v1, 0x3e8

    .line 206
    div-long v1, v5, v1

    long-to-int v1, v1

    const-wide/16 v2, 0x0

    cmp-long v4, v5, v2

    if-gez v4, :cond_2

    return-object v0

    :cond_2
    if-gtz v1, :cond_3

    return-object v0

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lin/srain/cube/views/ptr/R$string;->cube_ptr_last_update:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lin/srain/cube/views/ptr/R$string;->cube_ptr_seconds_ago:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :cond_4
    div-int/2addr v1, v2

    if-le v1, v2, :cond_6

    .line 221
    div-int/2addr v1, v2

    const/16 v2, 0x18

    if-le v1, v2, :cond_5

    .line 223
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 224
    sget-object v2, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 226
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lin/srain/cube/views/ptr/R$string;->cube_ptr_hours_ago:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lin/srain/cube/views/ptr/R$string;->cube_ptr_minutes_ago:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .line 106
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a:Landroid/view/animation/RotateAnimation;

    .line 107
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a:Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 109
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a:Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 111
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3ccc0000    # -180.0f

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b:Landroid/view/animation/RotateAnimation;

    .line 112
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b:Landroid/view/animation/RotateAnimation;

    iget v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 114
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lin/srain/cube/views/ptr/R$styleable;->PtrClassicHeader:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    sget v0, Lin/srain/cube/views/ptr/R$styleable;->PtrClassicHeader_ptr_rotate_ani_time:I

    iget v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    .line 56
    :cond_0
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a()V

    .line 57
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lin/srain/cube/views/ptr/R$layout;->cube_ptr_classic_default_footer:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 59
    sget v0, Lin/srain/cube/views/ptr/R$id;->ptr_classic_header_rotate_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    .line 61
    sget v0, Lin/srain/cube/views/ptr/R$id;->ptr_classic_header_rotate_view_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    .line 62
    sget v0, Lin/srain/cube/views/ptr/R$id;->ptr_classic_header_rotate_view_header_last_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->i:Landroid/widget/TextView;

    .line 63
    sget v0, Lin/srain/cube/views/ptr/R$id;->ptr_classic_header_rotate_view_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->g:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b()V

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->k:Z

    .line 131
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d()V

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Z)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c()V

    .line 170
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->g:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/srain/cube/views/ptr/R$string;->cube_ptr_load_complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "cube_ptr_classic_last_update"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 178
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    iget-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->h:J

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 3

    .line 239
    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getOffsetToRefresh()I

    move-result v0

    .line 240
    invoke-virtual {p4}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v1

    .line 241
    invoke-virtual {p4}, Lin/srain/cube/views/ptr/a/a;->l()I

    move-result p4

    const/4 v2, 0x2

    if-ge v1, v0, :cond_0

    if-lt p4, v0, :cond_0

    if-eqz p2, :cond_1

    if-ne p3, v2, :cond_1

    .line 245
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 246
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 247
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 248
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    if-gt p4, v0, :cond_1

    if-eqz p2, :cond_1

    if-ne p3, v2, :cond_1

    .line 253
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 254
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 256
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    iget-object p2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->k:Z

    .line 138
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d()V

    .line 139
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;)V

    .line 141
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/srain/cube/views/ptr/R$string;->cube_ptr_pull_up_to_load:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/srain/cube/views/ptr/R$string;->cube_ptr_pull_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->k:Z

    .line 155
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c()V

    .line 156
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->c:Landroid/widget/TextView;

    sget v0, Lin/srain/cube/views/ptr/R$string;->cube_ptr_loading:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 160
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->d()V

    .line 161
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    invoke-static {p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;)V

    :cond_0
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->j:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "footer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->setLastUpdateTimeKey(Ljava/lang/String;)V

    return-void
.end method

.method public setRotateAniTime(I)V
    .locals 1

    .line 77
    iget v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iput p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->e:I

    .line 81
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
