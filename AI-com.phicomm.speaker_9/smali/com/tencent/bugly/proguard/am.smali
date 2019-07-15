.class public final Lcom/tencent/bugly/proguard/am;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"


# static fields
.field private static y:[B

.field private static z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:[B

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:J

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 166
    new-array v0, v0, [B

    check-cast v0, [B

    .line 167
    sput-object v0, Lcom/tencent/bugly/proguard/am;->y:[B

    check-cast v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/am;->z:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    .line 175
    sget-object v2, Lcom/tencent/bugly/proguard/am;->z:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/tencent/bugly/proguard/am;->a:I

    const-string v1, ""

    .line 13
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->b:Ljava/lang/String;

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->c:Ljava/lang/String;

    const-string v1, ""

    .line 17
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->d:Ljava/lang/String;

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->e:Ljava/lang/String;

    const-string v1, ""

    .line 21
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->f:Ljava/lang/String;

    .line 23
    iput v0, p0, Lcom/tencent/bugly/proguard/am;->g:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->h:[B

    const-string v1, ""

    .line 27
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->i:Ljava/lang/String;

    const-string v1, ""

    .line 29
    iput-object v1, p0, Lcom/tencent/bugly/proguard/am;->j:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->l:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/am;->m:J

    const-string v2, ""

    .line 37
    iput-object v2, p0, Lcom/tencent/bugly/proguard/am;->n:Ljava/lang/String;

    const-string v2, ""

    .line 39
    iput-object v2, p0, Lcom/tencent/bugly/proguard/am;->o:Ljava/lang/String;

    const-string v2, ""

    .line 41
    iput-object v2, p0, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    .line 43
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/am;->q:J

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->r:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->s:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->t:Ljava/lang/String;

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->u:Ljava/lang/String;

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->v:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->w:Ljava/lang/String;

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 4

    .line 180
    iget v0, p0, Lcom/tencent/bugly/proguard/am;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/am;->a:I

    .line 181
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->b:Ljava/lang/String;

    const/4 v0, 0x2

    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 183
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->d:Ljava/lang/String;

    const/4 v0, 0x4

    .line 184
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->e:Ljava/lang/String;

    const/4 v0, 0x5

    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->f:Ljava/lang/String;

    .line 186
    iget v0, p0, Lcom/tencent/bugly/proguard/am;->g:I

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3, v1}, Lcom/tencent/bugly/proguard/i;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/am;->g:I

    .line 187
    sget-object v0, Lcom/tencent/bugly/proguard/am;->y:[B

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->h:[B

    const/16 v0, 0x8

    .line 188
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->i:Ljava/lang/String;

    const/16 v0, 0x9

    .line 189
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->j:Ljava/lang/String;

    .line 190
    sget-object v0, Lcom/tencent/bugly/proguard/am;->z:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const/16 v0, 0xb

    .line 191
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->l:Ljava/lang/String;

    .line 192
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/am;->m:J

    const/16 v3, 0xc

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/am;->m:J

    const/16 v0, 0xd

    .line 193
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->n:Ljava/lang/String;

    const/16 v0, 0xe

    .line 194
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->o:Ljava/lang/String;

    const/16 v0, 0xf

    .line 195
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    .line 196
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/am;->q:J

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/tencent/bugly/proguard/i;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/am;->q:J

    const/16 v0, 0x11

    .line 197
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->r:Ljava/lang/String;

    const/16 v0, 0x12

    .line 198
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->s:Ljava/lang/String;

    const/16 v0, 0x13

    .line 199
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->t:Ljava/lang/String;

    const/16 v0, 0x14

    .line 200
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->u:Ljava/lang/String;

    const/16 v0, 0x15

    .line 201
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->v:Ljava/lang/String;

    const/16 v0, 0x16

    .line 202
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/am;->w:Ljava/lang/String;

    const/16 v0, 0x17

    .line 203
    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/am;->x:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .locals 3

    .line 93
    iget v0, p0, Lcom/tencent/bugly/proguard/am;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 96
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 102
    iget v0, p0, Lcom/tencent/bugly/proguard/am;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 103
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->h:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a([BI)V

    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->j:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 120
    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/am;->m:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    .line 121
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 127
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 133
    :cond_7
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/am;->q:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    .line 134
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->r:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 136
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->r:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 138
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->s:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 140
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->s:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->t:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 144
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->t:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->u:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->u:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->v:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->v:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 154
    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->w:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 156
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->w:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->x:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 160
    iget-object v0, p0, Lcom/tencent/bugly/proguard/am;->x:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    :cond_e
    return-void
.end method
