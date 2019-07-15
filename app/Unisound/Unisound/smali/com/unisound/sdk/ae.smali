.class public Lcom/unisound/sdk/ae;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "filterName"

.field public static final b:Ljava/lang/String; = "returnType"

.field public static final c:Ljava/lang/String; = "city"

.field public static final d:Ljava/lang/String; = "gps"

.field public static final e:Ljava/lang/String; = "time"

.field public static final f:Ljava/lang/String; = "scenario"

.field public static final g:Ljava/lang/String; = "screen"

.field public static final h:Ljava/lang/String; = "dpi"

.field public static final i:Ljava/lang/String; = "history"

.field public static final j:Ljava/lang/String; = "udid"

.field public static final k:Ljava/lang/String; = "ver"

.field public static final l:Ljava/lang/String; = "appver"

.field public static final m:Ljava/lang/String; = "oneshotKeyProperty"

.field public static n:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://scv2.hivoice.cn/service/iss"

    sput-object v0, Lcom/unisound/sdk/ae;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->o:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unisound/sdk/ae;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    const-string v0, "no"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->o:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unisound/sdk/ae;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    const-string v0, "no"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->F:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->o:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unisound/sdk/ae;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    const-string v0, "no"

    iput-object v0, p0, Lcom/unisound/sdk/ae;->F:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/ae;->t:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    iput-object p5, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    iput-object p6, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    iput-object p7, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    iput-object p8, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    iput-object p9, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    iput-object p10, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    iput-object p11, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    iput-object p12, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    iput-object p13, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/ae;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/unisound/sdk/ae;)V
    .locals 1

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/ae;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/unisound/sdk/ae;->n:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/unisound/sdk/ae;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->r:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->p:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->u:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->s:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->x:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->y:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->v:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->w:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "iss.getTalk"

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->z:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->A:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->B:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->C:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ae;->F:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->D:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->E:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ae;->F:Ljava/lang/String;

    return-object v0
.end method
