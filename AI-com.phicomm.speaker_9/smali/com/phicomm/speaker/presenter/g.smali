.class public Lcom/phicomm/speaker/presenter/g;
.super Lcom/phicomm/speaker/e/c/b;
.source "MediaPlayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/e/c/b<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static e:J = 0x3a98L


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/phicomm/speaker/model/h;

.field private c:Lcom/phicomm/speaker/presenter/b/i;

.field private d:Lcom/phicomm/speaker/presenter/b/h;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/unisound/lib/mgr/ISwitchListListener;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/i;Lcom/phicomm/speaker/presenter/b/h;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/e/c/b;-><init>()V

    const-string v0, "playBySinger"

    .line 37
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->a:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/phicomm/speaker/presenter/h;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/presenter/h;-><init>(Lcom/phicomm/speaker/presenter/g;)V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->k:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    .line 64
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    .line 65
    new-instance p1, Lcom/phicomm/speaker/model/h;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/h;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->b:Lcom/phicomm/speaker/model/h;

    .line 66
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->j:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->f()V

    return-void
.end method

.method static final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 242
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    .line 140
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/h;->d()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/g;->k:Ljava/lang/Runnable;

    sget-wide v2, Lcom/phicomm/speaker/presenter/g;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    invoke-interface {v0}, Lcom/phicomm/speaker/presenter/b/h;->e()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 96
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/e/a;->b(Lcom/unisound/lib/mgr/ISwitchListListener;)V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 222
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/g;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->e()V

    const/16 v0, -0x271b

    if-eq p1, v0, :cond_1

    const/16 v0, -0x271c

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/i;->e(I)V

    goto :goto_1

    .line 227
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/phicomm/speaker/e/c/b;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 0

    .line 213
    iget-boolean p1, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/presenter/g;->a(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 4

    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/phicomm/speaker/views/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f01c0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v2, 0x7f0f00b4

    .line 241
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/phicomm/speaker/presenter/i;->a:Lcom/phicomm/speaker/c/c;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/c/c;)V

    .line 243
    invoke-virtual {v1}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method public a(Lcom/unisound/lib/mgr/ISwitchListListener;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    .line 154
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->i:Lcom/unisound/lib/mgr/ISwitchListListener;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/e/a;->a(Lcom/unisound/lib/mgr/ISwitchListListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/g;->c(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/phicomm/speaker/e/a;->d(Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 8

    .line 123
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/presenter/g;->c(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "50"

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move v6, p5

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/g;->c(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 110
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/g;->b:Lcom/phicomm/speaker/model/h;

    invoke-virtual {p2, p1, p4, p0}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;ZLcom/phicomm/speaker/e/c/b;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/g;->b:Lcom/phicomm/speaker/model/h;

    invoke-virtual {p2, p1, p3, p4, p0}, Lcom/phicomm/speaker/model/h;->a(Ljava/lang/String;ZZLcom/phicomm/speaker/e/c/b;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    .line 206
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->d:Lcom/phicomm/speaker/presenter/b/h;

    .line 207
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->g()V

    .line 208
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/g;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "playBySinger"

    .line 144
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/presenter/g;->c(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/phicomm/speaker/e/a;->a()Lcom/phicomm/speaker/e/a;

    move-result-object v0

    const-string v1, "30"

    invoke-virtual {v0, p1, v1, p0}, Lcom/phicomm/speaker/e/a;->d(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/b;)V

    return-void
.end method

.method final synthetic c()V
    .locals 1

    const v0, 0x7f0f0179

    .line 56
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 57
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->e()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    return-void
.end method

.method public onAudioInfoChangeEvent(Lcom/phicomm/speaker/e/b/b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/b;->a()Lcom/unisound/lib/audio/bean/AudioInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/unisound/lib/audio/bean/AudioInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 192
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 193
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    .line 194
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->e()V

    .line 196
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/i;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMusicInfoChangeEvent(Lcom/phicomm/speaker/e/b/h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/h;->a()Lcom/unisound/lib/msgcenter/bean/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/MusicInfo;->getItemId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    const-string v0, "playBySinger"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/phicomm/speaker/presenter/g;->g:Z

    .line 175
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/g;->e()V

    .line 177
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/g;->c:Lcom/phicomm/speaker/presenter/b/i;

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/b/i;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
