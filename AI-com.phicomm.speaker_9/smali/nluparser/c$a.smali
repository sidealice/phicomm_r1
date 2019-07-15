.class public Lnluparser/c$a;
.super Ljava/lang/Object;
.source "MixtureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/c;
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

    iput-object v0, p0, Lnluparser/c$a;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lnluparser/c$a;)Ljava/util/Map;
    .locals 0

    .line 55
    iget-object p0, p0, Lnluparser/c$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 92
    iget-object v0, p0, Lnluparser/c$a;->b:Lnluparser/a$a;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lnluparser/a/b;->a()Lnluparser/a/b;

    move-result-object v0

    iput-object v0, p0, Lnluparser/c$a;->b:Lnluparser/a$a;

    .line 95
    :cond_0
    iget-object v0, p0, Lnluparser/c$a;->a:Lnluparser/b$a;

    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lnluparser/b/b;->a()Lnluparser/b/b;

    move-result-object v0

    iput-object v0, p0, Lnluparser/c$a;->a:Lnluparser/b$a;

    .line 98
    :cond_1
    new-instance v0, Lnluparser/c$a$1;

    invoke-direct {v0, p0}, Lnluparser/c$a$1;-><init>(Lnluparser/c$a;)V

    iput-object v0, p0, Lnluparser/c$a;->c:Lnluparser/f;

    return-void
.end method


# virtual methods
.method public a()Lnluparser/c;
    .locals 4

    .line 87
    invoke-direct {p0}, Lnluparser/c$a;->b()V

    .line 88
    new-instance v0, Lnluparser/c;

    iget-object v1, p0, Lnluparser/c$a;->c:Lnluparser/f;

    iget-object v2, p0, Lnluparser/c$a;->a:Lnluparser/b$a;

    iget-object v3, p0, Lnluparser/c$a;->b:Lnluparser/a$a;

    invoke-direct {v0, v1, v2, v3}, Lnluparser/c;-><init>(Lnluparser/f;Lnluparser/b$a;Lnluparser/a$a;)V

    return-object v0
.end method
