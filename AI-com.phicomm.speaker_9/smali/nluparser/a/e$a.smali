.class Lnluparser/a/e$a;
.super Lnluparser/a/a;
.source "PatternClassifierFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\W\"service\"\\s*:\\s*\"([^\",]+)\""

    const/4 v1, 0x2

    .line 33
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnluparser/a/e$a;->b:Ljava/util/regex/Pattern;

    const-string v0, "\\W\"code\"\\s*:\\s*\"([^\",]+)\""

    .line 35
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnluparser/a/e$a;->c:Ljava/util/regex/Pattern;

    return-void
.end method

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

    .line 38
    invoke-direct {p0, p1}, Lnluparser/a/a;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/reflect/Type;
    .locals 1

    .line 61
    sget-object v0, Lnluparser/a/d;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 42
    sget-object v0, Lnluparser/a/e$a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .line 53
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lnluparser/a/e$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1

    :cond_0
    return-object p2
.end method
