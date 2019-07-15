.class public Lcom/baidu/location/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:C

.field public j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7fffffff

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/b/a;->a:I

    iput v2, p0, Lcom/baidu/location/b/a;->b:I

    iput v2, p0, Lcom/baidu/location/b/a;->c:I

    iput v2, p0, Lcom/baidu/location/b/a;->d:I

    iput v0, p0, Lcom/baidu/location/b/a;->e:I

    iput v0, p0, Lcom/baidu/location/b/a;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/a;->g:J

    iput v2, p0, Lcom/baidu/location/b/a;->h:I

    const/16 v0, 0x30

    iput-char v0, p0, Lcom/baidu/location/b/a;->i:C

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/a;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/a;->g:J

    return-void
.end method

.method public constructor <init>(IIIIIC)V
    .locals 3

    const v0, 0x7fffffff

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/b/a;->a:I

    iput v2, p0, Lcom/baidu/location/b/a;->b:I

    iput v2, p0, Lcom/baidu/location/b/a;->c:I

    iput v2, p0, Lcom/baidu/location/b/a;->d:I

    iput v0, p0, Lcom/baidu/location/b/a;->e:I

    iput v0, p0, Lcom/baidu/location/b/a;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/a;->g:J

    iput v2, p0, Lcom/baidu/location/b/a;->h:I

    const/16 v0, 0x30

    iput-char v0, p0, Lcom/baidu/location/b/a;->i:C

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/a;->k:Z

    iput p1, p0, Lcom/baidu/location/b/a;->a:I

    iput p2, p0, Lcom/baidu/location/b/a;->b:I

    iput p3, p0, Lcom/baidu/location/b/a;->c:I

    iput p4, p0, Lcom/baidu/location/b/a;->d:I

    iput p5, p0, Lcom/baidu/location/b/a;->h:I

    iput-char p6, p0, Lcom/baidu/location/b/a;->i:C

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/a;->g:J

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/b/a;)V
    .locals 7

    iget v1, p1, Lcom/baidu/location/b/a;->a:I

    iget v2, p1, Lcom/baidu/location/b/a;->b:I

    iget v3, p1, Lcom/baidu/location/b/a;->c:I

    iget v4, p1, Lcom/baidu/location/b/a;->d:I

    iget v5, p1, Lcom/baidu/location/b/a;->h:I

    iget-char v6, p1, Lcom/baidu/location/b/a;->i:C

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b/a;-><init>(IIIIIC)V

    iget-wide v0, p1, Lcom/baidu/location/b/a;->g:J

    iput-wide v0, p0, Lcom/baidu/location/b/a;->g:J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/a;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/baidu/location/b/a;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/b/a;)Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/a;->a:I

    iget v1, p1, Lcom/baidu/location/b/a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->b:I

    iget v1, p1, Lcom/baidu/location/b/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->d:I

    iget v1, p1, Lcom/baidu/location/b/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->c:I

    iget v1, p1, Lcom/baidu/location/b/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/baidu/location/b/a;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/baidu/location/b/a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/baidu/location/b/a;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/baidu/location/b/a;->a:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->b:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/location/b/a;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/a;->k:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lcom/baidu/location/b/a;->i:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/location/b/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/baidu/location/b/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/baidu/location/b/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/baidu/location/b/a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/baidu/location/b/a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/baidu/location/b/a;->k:Z

    if-eqz v1, :cond_0

    const-string v1, "&newcl=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&nw2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lcom/baidu/location/b/a;->i:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&cl2=%d|%d|%d|%d&cl_s2=%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/location/b/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/baidu/location/b/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/baidu/location/b/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/baidu/location/b/a;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/baidu/location/b/a;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
