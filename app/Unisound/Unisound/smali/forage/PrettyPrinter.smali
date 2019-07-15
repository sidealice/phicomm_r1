.class public final Lforage/PrettyPrinter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lforage/PrettyPrinter$GsonPrettyPrinter;,
        Lforage/PrettyPrinter$Default;
    }
.end annotation


# instance fields
.field private final converter:Lforage/Converter;

.field private originalOuput:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lforage/PrettyPrinter;->hasGsonOnClasspath()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lforage/PrettyPrinter$GsonPrettyPrinter;

    invoke-direct {v0}, Lforage/PrettyPrinter$GsonPrettyPrinter;-><init>()V

    iput-object v0, p0, Lforage/PrettyPrinter;->converter:Lforage/Converter;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lforage/PrettyPrinter$Default;

    invoke-direct {v0}, Lforage/PrettyPrinter$Default;-><init>()V

    iput-object v0, p0, Lforage/PrettyPrinter;->converter:Lforage/Converter;

    goto :goto_0
.end method

.method public static getInstance()Lforage/PrettyPrinter;
    .locals 1

    new-instance v0, Lforage/PrettyPrinter;

    invoke-direct {v0}, Lforage/PrettyPrinter;-><init>()V

    return-object v0
.end method

.method private static hasGsonOnClasspath()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.gson.Gson"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setOriginalOutput()Lforage/PrettyPrinter;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lforage/PrettyPrinter;->originalOuput:Z

    return-object p0
.end method

.method public toPrettyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lforage/PrettyPrinter;->originalOuput:Z

    if-eqz v0, :cond_0

    .end local p1    # "input":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "input":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lforage/PrettyPrinter;->converter:Lforage/Converter;

    invoke-interface {v0, p1}, Lforage/Converter;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
