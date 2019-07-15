.class Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;
.super Ljava/lang/Object;
.source "StoreHouseHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 283
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    .line 284
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->c:I

    .line 285
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->d:I

    .line 286
    iput p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->e:I

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;Lin/srain/cube/views/ptr/header/StoreHouseHeader$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;-><init>(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->f:Z

    const/4 v1, 0x0

    .line 291
    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    .line 293
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-static {v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I

    move-result v1

    iget-object v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    iget-object v2, v2, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->e:I

    .line 294
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-static {v1}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->b(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I

    move-result v1

    iget v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->e:I

    div-int/2addr v1, v2

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->c:I

    .line 295
    iget-object v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    iget-object v1, v1, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->c:I

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->d:I

    .line 296
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->run()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->f:Z

    .line 328
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 302
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->c:I

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 303
    :goto_0
    iget v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->d:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 305
    iget v3, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->c:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    .line 306
    iget v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    if-le v3, v5, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    iget-object v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    iget-object v5, v5, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v3, v5

    .line 311
    iget-object v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    iget-object v5, v5, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/srain/cube/views/ptr/header/b;

    .line 313
    invoke-virtual {v3, v1}, Lin/srain/cube/views/ptr/header/b;->setFillAfter(Z)V

    .line 314
    invoke-virtual {v3, v4}, Lin/srain/cube/views/ptr/header/b;->setFillEnabled(Z)V

    .line 315
    invoke-virtual {v3, v1}, Lin/srain/cube/views/ptr/header/b;->setFillBefore(Z)V

    .line 316
    iget-object v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-static {v4}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->c(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lin/srain/cube/views/ptr/header/b;->setDuration(J)V

    .line 317
    iget-object v4, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-static {v4}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->d(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F

    move-result v4

    iget-object v5, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    invoke-static {v5}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->e(Lin/srain/cube/views/ptr/header/StoreHouseHeader;)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lin/srain/cube/views/ptr/header/b;->a(FF)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    iget v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    add-int/2addr v0, v4

    iput v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->b:I

    .line 321
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->f:Z

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->a:Lin/srain/cube/views/ptr/header/StoreHouseHeader;

    iget v1, p0, Lin/srain/cube/views/ptr/header/StoreHouseHeader$a;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lin/srain/cube/views/ptr/header/StoreHouseHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
