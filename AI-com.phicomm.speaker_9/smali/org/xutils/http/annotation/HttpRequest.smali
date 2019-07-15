.class public interface abstract annotation Lorg/xutils/http/annotation/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/xutils/http/annotation/HttpRequest;
        builder = Lorg/xutils/http/app/DefaultParamsBuilder;
        cacheKeys = {
            ""
        }
        host = ""
        signs = {
            ""
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract builder()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/xutils/http/app/ParamsBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cacheKeys()[Ljava/lang/String;
.end method

.method public abstract host()Ljava/lang/String;
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public abstract signs()[Ljava/lang/String;
.end method
