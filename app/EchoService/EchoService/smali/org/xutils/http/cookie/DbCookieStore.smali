.class public final enum Lorg/xutils/http/cookie/DbCookieStore;
.super Ljava/lang/Enum;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/http/cookie/DbCookieStore;",
        ">;",
        "Ljava/net/CookieStore;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

.field public static final enum INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

.field private static final LIMIT_COUNT:I = 0x1388

.field private static final TRIM_TIME_SPAN:J = 0x3e8L


# instance fields
.field private final db:Lorg/xutils/DbManager;

.field private lastTrimTime:J

.field private final trimExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/xutils/http/cookie/DbCookieStore;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/cookie/DbCookieStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/xutils/http/cookie/DbCookieStore;

    sget-object v1, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    aput-object v1, v0, v2

    sput-object v0, Lorg/xutils/http/cookie/DbCookieStore;->$VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v1, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v1, v2, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    iput-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    .line 33
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    .line 37
    sget-object v1, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    invoke-virtual {v1}, Lorg/xutils/config/DbConfigs;->getConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    .line 39
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    const-string v3, "expiry"

    const-string v4, "="

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/xutils/http/cookie/DbCookieStore;)J
    .locals 2
    .param p0, "x0"    # Lorg/xutils/http/cookie/DbCookieStore;

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/xutils/http/cookie/DbCookieStore;J)J
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/cookie/DbCookieStore;
    .param p1, "x1"    # J

    .prologue
    .line 25
    iput-wide p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/http/cookie/DbCookieStore;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "effectiveURI":Ljava/net/URI;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .end local v0    # "effectiveURI":Ljava/net/URI;
    const-string v1, "http"

    .line 287
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .restart local v0    # "effectiveURI":Ljava/net/URI;
    :goto_0
    return-object v0

    .line 292
    .end local v0    # "effectiveURI":Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 293
    .local v6, "ignored":Ljava/lang/Throwable;
    move-object v0, p1

    .restart local v0    # "effectiveURI":Ljava/net/URI;
    goto :goto_0
.end method

.method private trimSize()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/http/cookie/DbCookieStore$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/cookie/DbCookieStore$1;-><init>(Lorg/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/cookie/DbCookieStore;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method

.method public static values()[Lorg/xutils/http/cookie/DbCookieStore;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/xutils/http/cookie/DbCookieStore;->$VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

    invoke-virtual {v0}, [Lorg/xutils/http/cookie/DbCookieStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 3
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 63
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lorg/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 57
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    new-instance v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-direct {v2, p1, p2}, Lorg/xutils/http/cookie/CookieEntity;-><init>(Ljava/net/URI;Ljava/net/HttpCookie;)V

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->trimSize()V

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .locals 19
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "uri is null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 80
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 82
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v10, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v15, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v14, v15}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v11

    .line 88
    .local v11, "selector":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<Lorg/xutils/http/cookie/CookieEntity;>;"
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v13

    .line 90
    .local v13, "where":Lorg/xutils/db/sqlite/WhereBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "host":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 92
    const-string v14, "domain"

    const-string v15, "="

    invoke-static {v14, v15, v6}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v14

    const-string v15, "domain"

    const-string v16, "="

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v12

    .line 93
    .local v12, "subWhere":Lorg/xutils/db/sqlite/WhereBuilder;
    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 94
    .local v5, "firstDot":I
    const-string v14, "."

    invoke-virtual {v6, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 95
    .local v7, "lastDot":I
    if-lez v5, :cond_1

    if-le v7, v5, :cond_1

    .line 96
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "domain":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 98
    const-string v14, "domain"

    const-string v15, "="

    invoke-virtual {v12, v14, v15, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 101
    .end local v3    # "domain":Ljava/lang/String;
    :cond_1
    invoke-virtual {v13, v12}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 104
    .end local v5    # "firstDot":I
    .end local v7    # "lastDot":I
    .end local v12    # "subWhere":Lorg/xutils/db/sqlite/WhereBuilder;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "path":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 106
    const-string v14, "path"

    const-string v15, "="

    invoke-static {v14, v15, v9}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v14

    const-string v15, "path"

    const-string v16, "="

    const-string v17, "/"

    .line 107
    invoke-virtual/range {v14 .. v17}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v14

    const-string v15, "path"

    const-string v16, "="

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v12

    .line 108
    .restart local v12    # "subWhere":Lorg/xutils/db/sqlite/WhereBuilder;
    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 109
    .local v8, "lastSplit":I
    :goto_0
    if-lez v8, :cond_3

    .line 110
    const/4 v14, 0x0

    invoke-virtual {v9, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 111
    const-string v14, "path"

    const-string v15, "="

    invoke-virtual {v12, v14, v15, v9}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 112
    const-string v14, "/"

    invoke-virtual {v9, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v13, v12}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 118
    .end local v8    # "lastSplit":I
    .end local v12    # "subWhere":Lorg/xutils/db/sqlite/WhereBuilder;
    :cond_4
    const-string v14, "uri"

    const-string v15, "="

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 120
    invoke-virtual {v11, v13}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object v14

    invoke-virtual {v14}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v2

    .line 121
    .local v2, "cookieEntityList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    if-eqz v2, :cond_6

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/cookie/CookieEntity;

    .line 123
    .local v1, "cookieEntity":Lorg/xutils/http/cookie/CookieEntity;
    invoke-virtual {v1}, Lorg/xutils/http/cookie/CookieEntity;->isExpired()Z

    move-result v15

    if-nez v15, :cond_5

    .line 124
    invoke-virtual {v1}, Lorg/xutils/http/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    .end local v1    # "cookieEntity":Lorg/xutils/http/cookie/CookieEntity;
    .end local v2    # "cookieEntityList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    .end local v6    # "host":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v11    # "selector":Lorg/xutils/db/Selector;, "Lorg/xutils/db/Selector<Lorg/xutils/http/cookie/CookieEntity;>;"
    .end local v13    # "where":Lorg/xutils/db/sqlite/WhereBuilder;
    :catch_0
    move-exception v4

    .line 129
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_6
    return-object v10
.end method

.method public getCookies()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, "rt":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    :try_start_0
    iget-object v4, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v5, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "cookieEntityList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/CookieEntity;

    .line 145
    .local v0, "cookieEntity":Lorg/xutils/http/cookie/CookieEntity;
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->isExpired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v0    # "cookieEntity":Lorg/xutils/http/cookie/CookieEntity;
    .end local v1    # "cookieEntityList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/http/cookie/CookieEntity;>;"
    :catch_0
    move-exception v2

    .line 151
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method public getURIs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :try_start_0
    iget-object v6, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v7, Lorg/xutils/http/cookie/CookieEntity;

    .line 168
    invoke-interface {v6, v7}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "uri"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xutils/db/DbModelSelector;->findAll()Ljava/util/List;

    move-result-object v4

    .line 169
    .local v4, "uriList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    if-eqz v4, :cond_1

    .line 170
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/table/DbModel;

    .line 171
    .local v2, "model":Lorg/xutils/db/table/DbModel;
    const-string v7, "uri"

    invoke-virtual {v2, v7}, Lorg/xutils/db/table/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "uri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_0

    .line 174
    :try_start_1
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    :try_start_3
    iget-object v7, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v8, Lorg/xutils/http/cookie/CookieEntity;

    const-string v9, "uri"

    const-string v10, "="

    invoke-static {v9, v10, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, "ignored":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 186
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "ignored":Ljava/lang/Throwable;
    .end local v2    # "model":Lorg/xutils/db/table/DbModel;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "uriList":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/db/table/DbModel;>;"
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-object v5
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "cookie"    # Ljava/net/HttpCookie;

    .prologue
    const/4 v5, 0x1

    .line 199
    if-nez p2, :cond_0

    move v2, v5

    .line 227
    :goto_0
    return v2

    .line 203
    :cond_0
    const/4 v2, 0x0

    .line 205
    .local v2, "modified":Z
    :try_start_0
    const-string v6, "name"

    const-string v7, "="

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    .line 207
    .local v4, "where":Lorg/xutils/db/sqlite/WhereBuilder;
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 209
    const-string v6, "domain"

    const-string v7, "="

    invoke-virtual {v4, v6, v7, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 212
    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v5, :cond_2

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 217
    :cond_2
    const-string v5, "path"

    const-string v6, "="

    invoke-virtual {v4, v5, v6, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 220
    :cond_3
    iget-object v5, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v6, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v5, v6, v4}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "domain":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "where":Lorg/xutils/db/sqlite/WhereBuilder;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 3

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
