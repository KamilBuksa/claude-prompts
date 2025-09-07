# 🧠 Claude Thinking Modes

Claude Code has specific thinking modes with increasing depth:

## Levels (Least → Most Computation)

- **`think`** - Basic analysis
- **`think hard`** - Deeper consideration  
- **`think harder`** - Comprehensive analysis
- **`ultrathink`** - Maximum depth (for critical decisions)

## When to Use Each Level

### `think` - Quick Analysis
- Simple feature additions
- Straightforward bug fixes
- Standard CRUD operations

### `think hard` - Deeper Consideration
- Architecture decisions
- Complex business logic
- Multi-component interactions

### `think harder` - Comprehensive Analysis  
- System design choices
- Performance optimization strategies
- Security implementation planning

### `ultrathink` - Maximum Depth
- **Architecture decisions** with long-term impact
- **Critical security** implementations
- **Complex system integrations**
- **Performance-critical** components

## Examples

### Architecture Decision
```
ultrathink: We need to choose between REST and GraphQL for our new API. Consider:
- Current team expertise
- Client requirements (mobile, web)  
- Caching strategies
- Real-time needs
- Development velocity
- Long-term maintenance
```

### Security Analysis
```
think harder about potential security issues:
- What are the authentication vulnerabilities?
- How does this handle authorization edge cases?
- What are the data encryption requirements?
- Consider input validation attack vectors
- Check for potential data leaks
```

### Performance Optimization
```
think hard about performance implications:
- What happens under high load?
- How does this scale?
- What are the bottlenecks?  
- Consider caching opportunities
- Check memory usage patterns
```

## 💡 Pro Tips

- **Match thinking depth to problem complexity**
- **Use ultrathink sparingly** - reserve for critical decisions
- **Be specific** about what to think about
- **Combine with workflows** for maximum effectiveness