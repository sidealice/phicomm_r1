.class Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;
.super Ljava/lang/Object;
.source "PtrClassicDefaultFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

.field private b:Z


# direct methods
.method private constructor <init>(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 280
    iput-boolean p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 283
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->a(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b:Z

    .line 287
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->run()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b:Z

    .line 292
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->b(Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;)V

    .line 298
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->b:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lin/srain/cube/views/ptr/PtrClassicDefaultFooter;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
