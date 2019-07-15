.class final Lnluparser/a/b$a;
.super Lnluparser/a/e$a;
.source "MixturePatternClassifierFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lnluparser/a/e$a;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/reflect/Type;
    .locals 1

    .line 32
    sget-object v0, Lnluparser/a/c;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
