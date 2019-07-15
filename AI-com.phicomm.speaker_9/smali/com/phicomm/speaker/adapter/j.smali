.class public Lcom/phicomm/speaker/adapter/j;
.super Landroid/widget/BaseAdapter;
.source "MusicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/adapter/j$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ListView;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

.field private n:Lcom/unisound/lib/music/bean/MusicList;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Z)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    .line 275
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/phicomm/speaker/adapter/j;->h:Landroid/widget/ListView;

    .line 65
    iput-boolean p3, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    const p3, 0x3f158106    # 0.584f

    .line 67
    invoke-static {p3, p2}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result p3

    iput p3, p0, Lcom/phicomm/speaker/adapter/j;->j:I

    const/high16 p3, 0x424e0000    # 51.5f

    .line 68
    invoke-static {p1, p3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result p1

    sub-int p1, p2, p1

    iput p1, p0, Lcom/phicomm/speaker/adapter/j;->k:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 69
    invoke-static {p1, p2}, Lcom/phicomm/speaker/f/f;->a(FI)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/adapter/j;->l:I

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/music/bean/MusicList;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    .line 163
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    .line 165
    invoke-virtual {v2}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    .line 167
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->g()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 180
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 182
    invoke-virtual {v2}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iput v0, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    .line 184
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->h()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/j;->f:Ljava/lang/String;

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->h:Landroid/widget/ListView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/j;->g:Ljava/lang/String;

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->h:Landroid/widget/ListView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 117
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->d:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->e()V

    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/j;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/music/bean/MusicList;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    .line 88
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->e()V

    .line 89
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/j;->notifyDataSetChanged()V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->e:Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->f()V

    .line 155
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/j;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/audio/bean/AudioCurrentInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    .line 100
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/j;->f()V

    .line 101
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/j;->notifyDataSetChanged()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 199
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->g:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/j;->f:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/j;->g:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    .line 281
    iget-object p2, p0, Lcom/phicomm/speaker/adapter/j;->a:Landroid/content/Context;

    const p3, 0x7f0b00ea

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 282
    new-instance p3, Lcom/phicomm/speaker/adapter/j$a;

    invoke-direct {p3, p0}, Lcom/phicomm/speaker/adapter/j$a;-><init>(Lcom/phicomm/speaker/adapter/j;)V

    const v0, 0x7f0902b2

    .line 283
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->a:Landroid/widget/TextView;

    const v0, 0x7f090121

    .line 284
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->b:Landroid/widget/ImageView;

    const v0, 0x7f090251

    .line 285
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->c:Landroid/widget/TextView;

    .line 286
    iget-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 287
    iget-boolean v0, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p3, Lcom/phicomm/speaker/adapter/j$a;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 293
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/phicomm/speaker/adapter/j$a;

    :goto_1
    const-string v0, ""

    .line 297
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/j;->o:Ljava/lang/String;

    const-string v0, ""

    .line 298
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/j;->p:Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    .line 300
    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/music/bean/MusicList;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    .line 303
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    if-eqz v1, :cond_3

    .line 304
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->o:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->n:Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v1}, Lcom/unisound/lib/music/bean/MusicList;->getArtist()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->p:Ljava/lang/String;

    goto :goto_2

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    .line 311
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    if-eqz v1, :cond_3

    .line 312
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->m:Lcom/unisound/lib/audio/bean/AudioCurrentInfo;

    invoke-virtual {v1}, Lcom/unisound/lib/audio/bean/AudioCurrentInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/adapter/j;->o:Ljava/lang/String;

    .line 316
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/j;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 317
    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->r:I

    if-ne v1, p1, :cond_5

    .line 318
    iput-boolean v2, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    goto :goto_3

    .line 321
    :cond_4
    iget v1, p0, Lcom/phicomm/speaker/adapter/j;->s:I

    if-ne v1, p1, :cond_5

    .line 322
    iput-boolean v2, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    .line 325
    :cond_5
    :goto_3
    iget-object p1, p3, Lcom/phicomm/speaker/adapter/j$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object p1, p3, Lcom/phicomm/speaker/adapter/j$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/adapter/j;->p:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p1, p3, Lcom/phicomm/speaker/adapter/j$a;->a:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 328
    iget-object p1, p3, Lcom/phicomm/speaker/adapter/j$a;->c:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 329
    iget-object p1, p3, Lcom/phicomm/speaker/adapter/j$a;->b:Landroid/widget/ImageView;

    iget-boolean p3, p0, Lcom/phicomm/speaker/adapter/j;->q:Z

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method
