.class public Lcom/unisound/sdk/l;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:F

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Lcn/yunzhisheng/nlu/OfflineNlu;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/l;->b:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/l;->c:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/l;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/l;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(FLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v2

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "RecognizeResult"

    aput-object v1, v0, v4

    const-string v1, "rmIgnoreTag : result before ignoreTag :="

    aput-object v1, v0, v5

    aput-object p2, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "RecognizeResult"

    aput-object v2, v1, v4

    const-string v2, "rmIgnoreTag : result end ignoreTag :="

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)F
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/high16 v0, -0x3d380000    # -100.0f

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)F
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3e380000    # -25.0f

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "<s>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "<s>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<s>|</s>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "<[\\w]*>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "<[\\w]*>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, ""

    iput-object v2, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<s>|</s>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "<[\\w]*>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "<[\\w]*>"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\n"

    const-string v5, "\n"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/high16 v3, -0x3e380000    # -25.0f

    iput v3, p0, Lcom/unisound/sdk/l;->e:F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/unisound/sdk/l;->e:F

    if-ne v3, v1, :cond_2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x2

    const/high16 v6, -0x3e380000    # -25.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v2, v7, :cond_2

    const-string v1, "FixrecognizeResult -> setResultList: RecognitionResult error for lessing than two lines!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "<s>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    const-string v2, "<s>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-boolean v2, p0, Lcom/unisound/sdk/l;->f:Z

    if-eqz v2, :cond_7

    if-nez p2, :cond_7

    iget-object v2, p0, Lcom/unisound/sdk/l;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-nez v2, :cond_5

    :cond_4
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "RecognizeResult"

    aput-object v3, v2, v0

    const-string v3, "setResultList : nluConfigFile didn\'t exists or OfflineNlu is null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput v6, p0, Lcom/unisound/sdk/l;->e:F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/unisound/sdk/l;->e:F

    :goto_1
    if-ge v0, v3, :cond_6

    iget-object v4, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    iget-object v5, p0, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcn/yunzhisheng/nlu/OfflineNlu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/unisound/sdk/l;->c:Z

    if-eqz v2, :cond_a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0, p3, p1}, Lcom/unisound/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput v6, p0, Lcom/unisound/sdk/l;->e:F

    array-length v2, v3

    add-int/lit8 v4, v2, -0x1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "RecognizeResult"

    aput-object v5, v2, v0

    const-string v5, "setResultList : arrayOfstring.length ="

    aput-object v5, v2, v1

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-lez v4, :cond_0

    aget-object v2, v3, v4

    invoke-static {v2}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/unisound/sdk/l;->e:F

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_9

    :try_start_0
    aget-object v0, v3, v2

    iget v5, p0, Lcom/unisound/sdk/l;->e:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/unisound/sdk/l;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/unisound/common/ai;->b(Ljava/lang/String;FLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, p0, Lcom/unisound/sdk/l;->b:Z

    if-nez v2, :cond_c

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput v6, p0, Lcom/unisound/sdk/l;->e:F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/unisound/sdk/l;->e:F

    :goto_4
    if-ge v0, v3, :cond_b

    iget-object v4, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v2, "<s>|</s>"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "<[\\w]*>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "<[\\w]*>"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput v6, p0, Lcom/unisound/sdk/l;->e:F

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/unisound/sdk/l;->b(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/unisound/sdk/l;->e:F

    :goto_5
    if-ge v0, v3, :cond_d

    iget-object v4, p0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/l;->i:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/l;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
