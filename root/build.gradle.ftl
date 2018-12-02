dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    implementation '${dependency}'
    </#list>
    </#if>
}
