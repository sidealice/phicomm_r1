.class Lin/srain/cube/views/ptr/PtrFrameLayout$b;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private b:I

.field private c:Landroid/widget/Scroller;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1274
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1270
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    .line 1275
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)V
    .locals 0

    .line 1266
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d()V

    return-void
.end method

.method private b()V
    .locals 5

    .line 1307
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v0, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "finish, currentPos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1310
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c()V

    .line 1311
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c()V

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrFrameLayout$b;)Z
    .locals 0

    .line 1266
    iget-boolean p0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 1315
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    .line 1316
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b:I

    .line 1317
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .locals 2

    .line 1321
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c()V

    .line 1322
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1328
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b()V

    .line 1333
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c()V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 8

    .line 1338
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/a/a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1341
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->e:I

    .line 1342
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->f:I

    .line 1343
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->e:I

    sub-int v5, p1, v0

    .line 1344
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1345
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v0, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "tryToScrollTo: start: %s, distance:%s, to:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lin/srain/cube/views/ptr/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1347
    :cond_1
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1349
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b:I

    .line 1352
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1353
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {p1, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    if-lez p2, :cond_3

    .line 1356
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1357
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {p1, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1358
    iput-boolean v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    goto :goto_1

    .line 1360
    :cond_3
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1361
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    int-to-float p2, v5

    invoke-static {p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    goto :goto_0

    .line 1363
    :cond_4
    iget-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    neg-int p2, v5

    int-to-float p2, p2

    invoke-static {p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    .line 1365
    :goto_0
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->d:Z

    :goto_1
    return-void
.end method

.method public run()V
    .locals 9

    .line 1279
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1280
    :goto_1
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->c:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1281
    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b:I

    sub-int v4, v3, v4

    .line 1282
    sget-boolean v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 1284
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v5, v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "scroll: %s, start: %s, to: %s, currentPos: %s, current :%s, last: %s, delta: %s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    .line 1286
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/a/a;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1284
    invoke-static {v5, v6, v7}, Lin/srain/cube/views/ptr/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_4

    .line 1290
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b:I

    .line 1291
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)Lin/srain/cube/views/ptr/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    int-to-float v1, v4

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    goto :goto_2

    .line 1294
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    .line 1296
    :goto_2
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1298
    :cond_4
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$b;->b()V

    :goto_3
    return-void
.end method
