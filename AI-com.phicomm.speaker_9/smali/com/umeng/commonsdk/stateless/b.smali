.class public Lcom/umeng/commonsdk/stateless/b;
.super Ljava/lang/Object;
.source "UMSLEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/l;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/stateless/b$c;,
        Lcom/umeng/commonsdk/stateless/b$d;,
        Lcom/umeng/commonsdk/stateless/b$a;,
        Lcom/umeng/commonsdk/stateless/b$b;,
        Lcom/umeng/commonsdk/stateless/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/l<",
        "Lcom/umeng/commonsdk/stateless/b;",
        "Lcom/umeng/commonsdk/stateless/b$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final A:I = 0x2

.field private static final B:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/stateless/b$e;",
            "Lcom/umeng/commonsdk/proguard/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:J = 0x5d55b037b877db0L

.field private static final m:Lcom/umeng/commonsdk/proguard/ap;

.field private static final n:Lcom/umeng/commonsdk/proguard/af;

.field private static final o:Lcom/umeng/commonsdk/proguard/af;

.field private static final p:Lcom/umeng/commonsdk/proguard/af;

.field private static final q:Lcom/umeng/commonsdk/proguard/af;

.field private static final r:Lcom/umeng/commonsdk/proguard/af;

.field private static final s:Lcom/umeng/commonsdk/proguard/af;

.field private static final t:Lcom/umeng/commonsdk/proguard/af;

.field private static final u:Lcom/umeng/commonsdk/proguard/af;

.field private static final v:Lcom/umeng/commonsdk/proguard/af;

.field private static final w:Lcom/umeng/commonsdk/proguard/af;

.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/as;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/at;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private C:B

.field private D:[Lcom/umeng/commonsdk/stateless/b$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/ap;

    const-string v1, "UMSLEnvelope"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->m:Lcom/umeng/commonsdk/proguard/ap;

    .line 49
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "version"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->n:Lcom/umeng/commonsdk/proguard/af;

    .line 51
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "address"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->o:Lcom/umeng/commonsdk/proguard/af;

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "signature"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->p:Lcom/umeng/commonsdk/proguard/af;

    .line 55
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "serial_num"

    const/16 v5, 0x8

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->q:Lcom/umeng/commonsdk/proguard/af;

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "ts_secs"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->r:Lcom/umeng/commonsdk/proguard/af;

    .line 59
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "length"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->s:Lcom/umeng/commonsdk/proguard/af;

    .line 61
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "entity"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->t:Lcom/umeng/commonsdk/proguard/af;

    .line 63
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "guid"

    invoke-direct {v0, v1, v3, v5}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->u:Lcom/umeng/commonsdk/proguard/af;

    .line 65
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "checksum"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v3, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->v:Lcom/umeng/commonsdk/proguard/af;

    .line 67
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "codex"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->w:Lcom/umeng/commonsdk/proguard/af;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/au;

    new-instance v6, Lcom/umeng/commonsdk/stateless/b$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/stateless/b$b;-><init>(Lcom/umeng/commonsdk/stateless/b$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/av;

    new-instance v6, Lcom/umeng/commonsdk/stateless/b$d;

    invoke-direct {v6, v7}, Lcom/umeng/commonsdk/stateless/b$d;-><init>(Lcom/umeng/commonsdk/stateless/b$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/commonsdk/stateless/b$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 186
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->a:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "version"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->b:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "address"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->c:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "signature"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->d:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "serial_num"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->e:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "ts_secs"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->f:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "length"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->g:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "entity"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3, v2}, Lcom/umeng/commonsdk/proguard/y;-><init>(BZ)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->h:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "guid"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->i:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v6, Lcom/umeng/commonsdk/proguard/x;

    const-string v7, "checksum"

    new-instance v8, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v8, v3}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    new-instance v2, Lcom/umeng/commonsdk/proguard/x;

    const-string v3, "codex"

    new-instance v6, Lcom/umeng/commonsdk/proguard/y;

    invoke-direct {v6, v5}, Lcom/umeng/commonsdk/proguard/y;-><init>(B)V

    invoke-direct {v2, v3, v4, v6}, Lcom/umeng/commonsdk/proguard/x;-><init>(Ljava/lang/String;BLcom/umeng/commonsdk/proguard/y;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/b;->k:Ljava/util/Map;

    .line 224
    const-class v0, Lcom/umeng/commonsdk/stateless/b;

    sget-object v1, Lcom/umeng/commonsdk/stateless/b;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/x;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    .line 179
    new-array v1, v1, [Lcom/umeng/commonsdk/stateless/b$e;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->D:[Lcom/umeng/commonsdk/stateless/b$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/stateless/b;)V
    .locals 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    .line 179
    new-array v1, v1, [Lcom/umeng/commonsdk/stateless/b$e;

    sget-object v2, Lcom/umeng/commonsdk/stateless/b$e;->j:Lcom/umeng/commonsdk/stateless/b$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->D:[Lcom/umeng/commonsdk/stateless/b$e;

    .line 251
    iget-byte v0, p1, Lcom/umeng/commonsdk/stateless/b;->C:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    .line 252
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    .line 255
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    .line 261
    :cond_2
    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->d:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    .line 262
    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->e:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    .line 263
    iget v0, p1, Lcom/umeng/commonsdk/stateless/b;->f:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    .line 264
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/m;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    .line 268
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    .line 271
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/commonsdk/stateless/b;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    iget-object v0, p1, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    .line 274
    :cond_5
    iget p1, p1, Lcom/umeng/commonsdk/stateless/b;->j:I

    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/b;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    .line 236
    iput p4, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    .line 238
    iput p5, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    .line 239
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    .line 240
    iput p6, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    .line 241
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    .line 242
    iput-object p7, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    .line 243
    iput-object p8, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    .line 244
    iput-object p9, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic H()Lcom/umeng/commonsdk/proguard/ap;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->m:Lcom/umeng/commonsdk/proguard/ap;

    return-object v0
.end method

.method static synthetic I()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->n:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic J()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->o:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic K()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->p:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic L()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->q:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic M()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->r:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic N()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->s:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic O()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->t:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic P()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->u:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic Q()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->v:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method static synthetic R()Lcom/umeng/commonsdk/proguard/af;
    .locals 1

    .line 39
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->w:Lcom/umeng/commonsdk/proguard/af;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 721
    :try_start_0
    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    .line 722
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->read(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 725
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    :try_start_0
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae;

    new-instance v1, Lcom/umeng/commonsdk/proguard/aw;

    invoke-direct {v1, p1}, Lcom/umeng/commonsdk/proguard/aw;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ae;-><init>(Lcom/umeng/commonsdk/proguard/ay;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->write(Lcom/umeng/commonsdk/proguard/ak;)V
    :try_end_0
    .catch Lcom/umeng/commonsdk/proguard/r; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 713
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/r;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-void
.end method

.method public C()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()I
    .locals 1

    .line 550
    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return v0
.end method

.method public E()V
    .locals 2

    .line 560
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public F()Z
    .locals 2

    .line 568
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public G()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 684
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3

    .line 694
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_3
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 698
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_4
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 702
    new-instance v0, Lcom/umeng/commonsdk/proguard/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public a()Lcom/umeng/commonsdk/stateless/b;
    .locals 1

    .line 278
    new-instance v0, Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/stateless/b;-><init>(Lcom/umeng/commonsdk/stateless/b;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 385
    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a([B)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 468
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;

    return-object p0
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 411
    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    const/4 p1, 0x1

    .line 412
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c(I)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 437
    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    const/4 p1, 0x1

    .line 438
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->d(Z)V

    .line 287
    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    .line 288
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->e(Z)V

    .line 289
    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    .line 290
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->f(Z)V

    .line 291
    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    .line 292
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    .line 293
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    .line 294
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    .line 295
    invoke-virtual {p0, v1}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    .line 296
    iput v1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    return-void
.end method

.method public d(I)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 554
    iput p1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    const/4 p1, 0x1

    .line 555
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->j(Z)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)V
    .locals 2

    .line 403
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public d()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/commonsdk/proguard/l;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->a()Lcom/umeng/commonsdk/stateless/b;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/umeng/commonsdk/stateless/b$e;
    .locals 0

    .line 576
    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/b$e;->a(I)Lcom/umeng/commonsdk/stateless/b$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    .line 429
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 455
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/commonsdk/proguard/s;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/stateless/b;->e(I)Lcom/umeng/commonsdk/stateless/b$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 491
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 545
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 572
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/umeng/commonsdk/proguard/i;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public j()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 381
    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    return v0
.end method

.method public l()V
    .locals 2

    .line 391
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public m()Z
    .locals 2

    .line 399
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    return v0
.end method

.method public o()V
    .locals 2

    .line 417
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public p()Z
    .locals 2

    .line 425
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 433
    iget v0, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    return v0
.end method

.method public r()V
    .locals 2

    .line 443
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    return-void
.end method

.method public read(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 581
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->b(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method

.method public s()Z
    .locals 2

    .line 451
    iget-byte v0, p0, Lcom/umeng/commonsdk/stateless/b;->C:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/i;->a(BI)Z

    move-result v0

    return v0
.end method

.method public t()[B
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/umeng/commonsdk/proguard/m;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/nio/ByteBuffer;)Lcom/umeng/commonsdk/stateless/b;

    .line 460
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMSLEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "version:"

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "address:"

    .line 604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 608
    :cond_1
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "signature:"

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serial_num:"

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts_secs:"

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "length:"

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "entity:"

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    const-string v1, "null"

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 641
    :cond_3
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/m;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :goto_3
    const-string v1, ", "

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "guid:"

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    .line 654
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :goto_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/stateless/b;->F()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "codex:"

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    iget v1, p0, Lcom/umeng/commonsdk/stateless/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, ")"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/nio/ByteBuffer;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 478
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public w()Z
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/ak;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 586
    sget-object v0, Lcom/umeng/commonsdk/stateless/b;->x:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/ak;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/at;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/at;->b()Lcom/umeng/commonsdk/proguard/as;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/as;->a(Lcom/umeng/commonsdk/proguard/ak;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    return-void
.end method

.method public z()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
