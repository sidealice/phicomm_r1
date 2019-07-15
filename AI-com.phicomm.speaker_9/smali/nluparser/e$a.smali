.class public Lnluparser/e$a;
.super Ljava/lang/Object;
.source "NluProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lnluparser/b$a;

.field private b:Lnluparser/a$a;

.field private c:Lnluparser/f;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnluparser/e$a;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lnluparser/e$a;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lnluparser/e$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 92
    iget-object v0, p0, Lnluparser/e$a;->b:Lnluparser/a$a;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lnluparser/a/e;->a()Lnluparser/a/e;

    move-result-object v0

    iput-object v0, p0, Lnluparser/e$a;->b:Lnluparser/a$a;

    .line 95
    :cond_0
    iget-object v0, p0, Lnluparser/e$a;->a:Lnluparser/b$a;

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lnluparser/b/a;->a()Lnluparser/b/a;

    move-result-object v0

    iput-object v0, p0, Lnluparser/e$a;->a:Lnluparser/b$a;

    .line 98
    :cond_1
    new-instance v0, Lnluparser/e$a$1;

    invoke-direct {v0, p0}, Lnluparser/e$a$1;-><init>(Lnluparser/e$a;)V

    iput-object v0, p0, Lnluparser/e$a;->c:Lnluparser/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/e$a;
    .locals 1

    .line 72
    iget-object v0, p0, Lnluparser/e$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lnluparser/e$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public a()Lnluparser/e;
    .locals 4

    .line 87
    invoke-direct {p0}, Lnluparser/e$a;->b()V

    .line 88
    new-instance v0, Lnluparser/e;

    iget-object v1, p0, Lnluparser/e$a;->c:Lnluparser/f;

    iget-object v2, p0, Lnluparser/e$a;->a:Lnluparser/b$a;

    iget-object v3, p0, Lnluparser/e$a;->b:Lnluparser/a$a;

    invoke-direct {v0, v1, v2, v3}, Lnluparser/e;-><init>(Lnluparser/f;Lnluparser/b$a;Lnluparser/a$a;)V

    return-object v0
.end method
