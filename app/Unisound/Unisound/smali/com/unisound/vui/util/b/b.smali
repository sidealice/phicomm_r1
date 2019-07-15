.class public Lcom/unisound/vui/util/b/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/unisound/vui/util/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/b/a/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/unisound/vui/util/b/a/g;

.field private final c:Lcom/unisound/vui/util/b/a;

.field private d:[Lcom/unisound/vui/util/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/unisound/vui/util/b/a/h",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/vui/util/b/a/h;

    invoke-direct {v0}, Lcom/unisound/vui/util/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/b/b;->a:Lcom/unisound/vui/util/b/a/h;

    sget-object v0, Lcom/unisound/vui/util/b/a/d;->a:Lcom/unisound/vui/util/b/a/d;

    iput-object v0, p0, Lcom/unisound/vui/util/b/b;->b:Lcom/unisound/vui/util/b/a/g;

    new-instance v1, Lcom/unisound/vui/util/b/a;

    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4040000000000000L    # -0.125

    const-wide/high16 v8, -0x4020000000000000L    # -0.5

    invoke-direct/range {v1 .. v9}, Lcom/unisound/vui/util/b/a;-><init>(DDDD)V

    iput-object v1, p0, Lcom/unisound/vui/util/b/b;->c:Lcom/unisound/vui/util/b/a;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unisound/vui/util/b/a/h;

    iput-object v0, p0, Lcom/unisound/vui/util/b/b;->d:[Lcom/unisound/vui/util/b/a/h;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/b/b;->e:Ljava/util/HashMap;

    return-void
.end method
